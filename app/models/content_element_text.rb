class ContentElementText < ActiveRecord::Base

  before_save :create_clean_text

  belongs_to :content_element
  
  validates_associated :content_element
  
  # returns the icon, that is used for the backend
  def icon
    "icons/content_elements/content_element_text.png"
  end
  
  # defines the path to the partial, that gets rendered in the body part of a content element in the backend
  # custom content elements should have a method 'administration_partial' returning the specific partial
  def administration_partial
    "admin/content_elements/types/content_element_text/administration"
  end
  
  def create_clean_text
    self.clean_text = self.text.gsub(/<\/?[^>]*>/, "")
  end
   
end