class Image < ActiveRecord::Base
  
  has_many :image_attachments
  has_attached_file :photo
  
  acts_as_paranoid
  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png']
end