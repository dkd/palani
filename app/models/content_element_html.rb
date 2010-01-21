# == Schema Information
#
# Table name: content_element_htmls
#
#  id                 :integer(4)      not null, primary key
#  content_element_id :integer(4)
#  html               :text
#  created_at         :datetime
#  updated_at         :datetime
#
#
class ContentElementHtml < ActiveRecord::Base

  acts_as_content_element :icon => "icons/content_elements/content_element_html.png",
                          :administration_partial => "admin/content_elements/types/content_element_html/administration"

  belongs_to :content_element, :dependent => :destroy
  
  validates_associated :content_element
  
  liquid_methods :html, :created_at, :updated_at, :header, :element_type, :hidden, :created_at, :updated_at, :tags, :page

end
