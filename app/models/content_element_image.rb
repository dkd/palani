class ContentElementImage < ActiveRecord::Base

  belongs_to :content_element
  
  validates_associated :content_element
  validates_presence_of :image_url
  
end
