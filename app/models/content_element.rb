class ContentElement < ActiveRecord::Base
  
  belongs_to :page
  has_many :notices
  
  validates_associated :page
  validates_presence_of :type
  
  acts_as_tree
  acts_as_taggable_on :tags
  acts_as_paranoid
  
  # returns the icon, that is used for the backend
  def icon
    unless  element_type=="ContentElement"
      Kernel.const_get(element_type).find_by_content_element_id(id).icon
    else  
      "icons/content_elements/content_element.png"
    end
  end
  
  # defines the path to the partial, that gets rendered in the body part of a content element in the backend
  # custom content elements should have a method 'administration_partial' returning the specific partial
  def administration_partial
    unless  element_type=="ContentElement"
      Kernel.const_get(element_type).find_by_content_element_id(id).administration_partial
    else  
      "admin/content_elements/types/content_element/administration"
    end
  end
  
end