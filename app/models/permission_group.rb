# == Schema Information
#
# Table name: permission_groups
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PermissionGroup < ActiveRecord::Base

  has_many :permissions
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
end
