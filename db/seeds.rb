# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

puts "-----------------------------------------------"
puts "-- Initializing the database (Palani)"
puts "-----------------------------------------------"
puts ""

user = User.create(:username => "admin", :password => "password", :password_confirmation => "password", :email => "noreply@palani-cms.org",
                   :surname => "Max", :name => "Power")
# This will create the 'Administrator' user group and 
# associate it to the user.
Lockdown::Database.sync_with_db
Lockdown::System.make_user_administrator(user)
puts "Administrator added"
puts "User: admin  Password: password"
puts ""
# load permission groups
@content_group = PermissionGroup.create :name => "content"
@users_group = PermissionGroup.create :name => "users"
@administration_group = PermissionGroup.create :name => "administration"
@help_group = PermissionGroup.create :name => "help"
@content_element_template_group = PermissionGroup.create :name => "content_element_templates"
@page_template_group = PermissionGroup.create :name => "page_templates"

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
Permission.find_by_name("Content Element Templates").update_attributes :permission_group => @content_element_template_group
Permission.find_by_name("Create Content Element Template").update_attributes :permission_group => @content_element_template_group
Permission.find_by_name("Edit Content Element Template").update_attributes :permission_group => @content_element_template_group
Permission.find_by_name("Delete Content Element Template").update_attributes :permission_group => @content_element_template_group
Permission.find_by_name("Page Templates").update_attributes :permission_group => @page_template_group
Permission.find_by_name("Create Page Template").update_attributes :permission_group => @page_template_group
Permission.find_by_name("Edit Page Template").update_attributes :permission_group => @page_template_group
Permission.find_by_name("Delete Page Template").update_attributes :permission_group => @page_template_group

Page.create :title => "Rootpage", :type => "ContentPage", :sorting => 1

puts ""
puts "-----------------------------------------------"
puts "-- Next steps:"
puts "   1) Start server via script/server"
puts ""
puts "   2) Login at http://localhost:3000/admin/"
puts ""
puts "-----------------------------------------------"
puts ""