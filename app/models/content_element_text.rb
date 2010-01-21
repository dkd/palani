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

  acts_as_content_element :icon => "icons/content_elements/content_element_text.png",
                          :administration_partial => "admin/content_elements/types/content_element_text/administration"

  before_save :create_clean_text

  belongs_to :content_element, :dependent => :destroy
  
  validates_associated :content_element
  
  liquid_methods :text, :clean_text, :created_at, :updated_at, :header, :element_type, :hidden, :created_at, :updated_at, :tags, :page
  
  def create_clean_text
    self.clean_text = self.text.gsub(/<\/?[^>]*>/, "") if self.text
  end
   
end
