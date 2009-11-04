class ContentElementHtml < ActiveRecord::Base

  belongs_to :content_element
  
  validates_associated :content_element
  validates_presence_of :html
  
  # returns the icon, that is used for the backend
  def icon
    "icons/content_elements/content_element_html.png"
  end
  
  # defines the path to the partial, that gets rendered in the body part of a content element in the backend
  # custom content elements should have a method 'administration_partial' returning the specific partial
  def administration_partial
    "admin/content_elements/types/content_element_html/administration"
  end
  
  # the labels will be used as locale keys
  # required attributes:
  # * label
  # * field_type
  # * value
  # optional attributes:
  # * options
  # available field types:
  # * text_field
  # * text_area
  # returns the input fields and labels, that should be displayed in the "settings" tab, as an hash
  def edit_fields
    []
  end
  
end