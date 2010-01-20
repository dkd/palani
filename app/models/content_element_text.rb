# == Schema Information
#
# Table name: content_element_texts
#
#  id                 :integer(4)      not null, primary key
#  content_element_id :integer(4)
#  text               :text
#  created_at         :datetime
#  updated_at         :datetime
#  clean_text         :text
#
# In the templates the following methods/attributes are available:
# * text
# * clean_text
# * header
# * element_type
# * hidden
# * created_at
# * updated_at
# * tags
# * page
class ContentElementText < ActiveRecord::Base

  include ActsAsContentElement

  before_save :create_clean_text

  belongs_to :content_element, :dependent => :destroy
  
  validates_associated :content_element
  
  liquid_methods :text, :clean_text, :created_at, :updated_at, :header, :element_type, :hidden, :created_at, :updated_at, :tags, :page
  
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
    self.clean_text = self.text.gsub(/<\/?[^>]*>/, "") if self.text
  end
   
end
