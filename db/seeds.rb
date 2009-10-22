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

# assign groups to permissions
Permission.find(1).update_attributes :permission_group => @content_group
Permission.find(3).update_attributes :permission_group => @content_group
Permission.find(10).update_attributes :permission_group => @content_group
Permission.find(12).update_attributes :permission_group => @content_group
Permission.find(2).update_attributes :permission_group => @users_group
Permission.find(5).update_attributes :permission_group => @users_group
Permission.find(8).update_attributes :permission_group => @users_group
Permission.find(9).update_attributes :permission_group => @users_group
Permission.find(7).update_attributes :permission_group => @administration_group
Permission.find(4).update_attributes :permission_group => @help_group
Permission.find(6).update_attributes :permission_group => @help_group
Permission.find(11).update_attributes :permission_group => @help_group
