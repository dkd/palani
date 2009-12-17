# == Schema Information
#
# Table name: users
#
#  id                :integer(4)      not null, primary key
#  username          :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  surname           :string(255)
#  name              :string(255)
#  email             :string(255)
#  last_login_ip     :string(255)
#  last_login_at     :datetime
#  created_at        :datetime
#  updated_at        :datetime
#  persistence_token :string(255)     not null
#  current_login_ip  :string(255)
#  current_login_at  :datetime
#  backend_language  :string(255)     default("en")
#  deleted_at        :datetime
#

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
    actions = link_to_remote( image_tag("icons/edit.png") , 
                                  :url => { :controller => "admin/users", :action => "edit", :id => id, :only_path => true  }, 
                                  :method => "get")
    actions << link_to_remote( image_tag("icons/delete.png") , 
                                  :url => { :controller => "admin/users", :action => "destroy", :id => id, :only_path => true  }, 
                                  :method => "delete")
  end
  
end
