class ContentElementHtml < ActiveRecord::Base

  belongs_to :content_element
  
  validates_associated :content_element
  validates_presence_of :html
  
  def administration_partial
    "admin/content_elements/types/content_element_html/administration"
  end
  
end