class ContentElementText < ActiveRecord::Base

  belongs_to :content_element
  
  validates_associated :content_element
  validates_presence_of :text
  
  def icon
    "icons/content_elements/content_element_text.png"
  end
  
  def administration_partial
    "admin/content_elements/types/content_element_text/administration"
  end
   
end