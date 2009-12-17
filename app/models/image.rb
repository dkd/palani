# == Schema Information
#
# Table name: images
#
#  id                       :integer(4)      not null, primary key
#  created_at               :datetime
#  updated_at               :datetime
#  photo_file_name          :string(255)
#  photo_content_type       :string(255)
#  photo_file_size          :integer(4)
#  photo_updated_at         :datetime
#  content_element_image_id :integer(4)
#  deleted_at               :datetime
#

class Image < ActiveRecord::Base
  
  has_many :image_attachments
  has_attached_file :photo, :path => ":rails_root/public/uploads/:class/:id/:style/:basename.:extension", :url => "/uploads/:class/:id/:style/:basename.:extension",
                    :styles =>  { :medium => "300x300>", :thumb => "100x100>" }
  
  acts_as_paranoid
  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/gif']
  
  liquid_methods :photo, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
  
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
