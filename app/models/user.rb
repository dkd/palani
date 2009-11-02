class User < ActiveRecord::Base
  
  has_and_belongs_to_many :user_groups
  
  validates_presence_of :username, :backend_language
  validates_uniqueness_of :username
  validates_format_of :email,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => 'invalid_email_adress'
  
  acts_as_authentic
  acts_as_paranoid
  
  named_scope :grid_data, :select => 'id,username,surname,name'
  
end