module Admin::UserGroupsHelper
  
  # returns the administrator user group
  def admin_user_group
    @user_group = UserGroup.find_by_name("Administrators")
    @user_group
  end
  
end