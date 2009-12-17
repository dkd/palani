# == Schema Information
#
# Table name: permissions
#
#  id                  :integer(4)      not null, primary key
#  name                :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  permission_group_id :integer(4)
#
#
class Permission < ActiveRecord::Base
  has_and_belongs_to_many :user_groups
  belongs_to :permission_group
  
  before_save :check_group
  
	def all_users
		User.find_by_sql <<-SQL
			select users.* 
			from users, user_groups_users, permissions_user_groups
			where users.id = user_groups_users.user_id 
			and user_groups_users.user_group_id = permissions_user_groups.user_group_id
			and permissions_user_groups.permission_id = #{self.id}
		SQL
  end
  
  class << self
    
    def for_user_groups
      @permissions = Permission.all
      @permissions.each { |p|
        p.name = p.name.downcase.gsub(" ","_")

      }
      # remove permissions with public access
      @permissions.delete_if{ |p| p.name=="login" }
      @permissions
    end
    
  end
  
  private
  
  # if the permission does not belong to any permission group,
  # it will belong to 'others'
  def check_group
    self.permission_group ||= PermissionGroup.find_by_name("others")
  end
  
end
