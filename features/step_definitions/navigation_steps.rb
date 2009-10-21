Given /^a logged in user$/ do
  visit logout_path
  visit root_path
  fill_in "Username", :with => "admin"
  fill_in "Password", :with => "test"
  click_button "Login"
end

Given /^a logged in admin$/ do
#  @user = Factory.create(:user, :name => "admin", :password => "test", :password_confirmation => "test", :backend_language => "en")
#  @user_group = Factory.create(:user_group, :name => "Administrators")
#  @user.user_groups << @user_group
  visit logout_path
  visit root_path
  fill_in "Username", :with => "admin"
  fill_in "Password", :with => "test"
  click_button "Login"
end