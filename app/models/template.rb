# == Schema Information
#
# Table name: templates
#
#  id                   :integer(4)      not null, primary key
#  title                :string(255)
#  code                 :text
#  type                 :string(255)
#  deleted_at           :datetime
#  created_at           :datetime
#  updated_at           :datetime
#  content_element_type :string(255)
#
#
class Template < ActiveRecord::Base
  include ActionView::Helpers::JavaScriptHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionController::UrlWriter
  include ERB::Util
  
  ALLOCATED_TAGS = ["content_for_layout"]
  
  has_many :template_parts
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  accepts_nested_attributes_for :template_parts
  
  acts_as_paranoid
  
  def actions
    actions = link_to_remote( image_tag("icons/edit.png") , 
                                  :url => { :controller => "admin/"+self.class.to_s.tableize, :action => "edit", :id => id, :only_path => true  }, 
                                  :method => "get")
    actions << link_to_remote( image_tag("icons/delete.png") , 
                                  :url => { :controller => "admin/"+self.class.to_s.tableize, :action => "destroy", :id => id, :only_path => true  }, 
                                  :method => "delete")
  end
  
  # returns a html escaped code with a maximum of 60 chars
  def clean_code
    truncate(html_escape(code), :length => 60, :omission => "...")
  end
  
end
