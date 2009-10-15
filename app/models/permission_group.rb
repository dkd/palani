class PermissionGroup < ActiveRecord::Base

  has_many :permissions
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
end