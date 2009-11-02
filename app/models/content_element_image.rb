class ContentElementImage < ActiveRecord::Base

  belongs_to :content_element
  
  validates_associated :content_element
  validates_presence_of :image_url

  def icon
    "icons/content_elements/content_element_image.png"
  end
  
  def administration_partial
    "admin/content_elements/types/content_element_image/administration"
  end
  
end