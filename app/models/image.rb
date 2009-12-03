class Image < ActiveRecord::Base
  
  has_many :image_attachments
  has_attached_file :photo, :path => ":rails_root/public/uploads/:class/:id/:style/:basename.:extension", :url => "/uploads/:class/:id/:style/:basename.:extension",
                    :styles =>  { :medium => "300x300>", :thumb => "100x100>" }
  
  acts_as_paranoid
  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/gif']
  
  liquid_methods :name, :file_size
  
  def name
    self.photo_file_name.gsub(/[.][a-zA-Z]*/,"")
  end
  
  def file_size
    file_size = self.photo_file_size
    if (file_size/1024) < 1024
      (file_size/1024).to_s + " KB"
    else
      (file_size/(1024*1024)).to_s + " MB"
    end
  end
  
end