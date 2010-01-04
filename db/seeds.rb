# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

user = User.create(:username => "admin", :password => "password", :password_confirmation => "password", :email => "noreply@palani-cms.org",
                   :surname => "Max", :name => "Power")
# This will create the 'Administrator' user group and 
# associate it to the user.
Lockdown::System.make_user_administrator(user)

# load permission groups
@content_group = PermissionGroup.create :name => "content"
@users_group = PermissionGroup.create :name => "users"
@administration_group = PermissionGroup.create :name => "administration"
@help_group = PermissionGroup.create :name => "help"
@content_template_group = PermissionGroup.create :name => "content_templates"

# assign groups to permissions
Permission.find_by_name("Create Content").update_attributes :permission_group => @content_group
Permission.find_by_name("Content").update_attributes :permission_group => @content_group
Permission.find_by_name("Edit Content").update_attributes :permission_group => @content_group
Permission.find_by_name("Delete Content").update_attributes :permission_group => @content_group
Permission.find_by_name("Users").update_attributes :permission_group => @users_group
Permission.find_by_name("Create User").update_attributes :permission_group => @users_group
Permission.find_by_name("Edit User").update_attributes :permission_group => @users_group
Permission.find_by_name("Delete User").update_attributes :permission_group => @users_group
Permission.find_by_name("Edit Profile").update_attributes :permission_group => @administration_group
Permission.find_by_name("Help").update_attributes :permission_group => @help_group
Permission.find_by_name("Faq Help").update_attributes :permission_group => @help_group
Permission.find_by_name("Community Help").update_attributes :permission_group => @help_group

Page.create :title => "Rootpage", :type => "ContentPage", :sorting => 1