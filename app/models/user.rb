class User < ActiveRecord::Base
  
  include ActionView::Helpers::JavaScriptHelper
  include ActionView::Helpers::TagHelper
  include ActionController::UrlWriter
  include ActionView::Helpers::AssetTagHelper
  
  has_and_belongs_to_many :user_groups
  
  validates_presence_of :username, :backend_language
  validates_uniqueness_of :username
  validates_format_of :email,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => 'invalid_email_adress'
  
  acts_as_authentic
  acts_as_paranoid
  
  named_scope :grid_data, :select => 'id,username,surname,name'
  
  def actions
    links = link_to_remote( image_tag("icons/edit.png") , 
                                  :url => { :controller => "admin/users", :action => "edit", :id => self.id, :only_path => true  }, :method => "get")
    links << link_to_remote( image_tag("icons/delete.png") , 
                                  :url => { :controller => "admin/users", :action => "destroy", :id => self.id, :only_path => true  }, :method => "delete")
    links
  end
  
end