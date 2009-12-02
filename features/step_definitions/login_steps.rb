Given /^a valid user$/ do
  @user = Factory.create(:user, :name => "admin", :password => "test", :password_confirmation => "test", :backend_language => "en")
  @user_group = Factory.create(:user_group, :name => "Administrators")
  @user.user_groups << @user_group
end

When /^I put his username and correct password into the form$/ do
  visit admin_pages_path
  fill_in "Username", :with => @user.username
  fill_in "Password", :with => @user.password
  click_button "Login"
end

Then /^I should get redirected to the welcome page$/ do
  request.request_uri.should == '/admin/pages'
end

Given /^a invalid user$/ do
  @invalid_user = User.new( :username => "wejrkljkl", :password => "wejrkjkjaklwer" )
end

When /^I put his username and incorrect password into the form$/ do
  visit admin_pages_path
  fill_in "Username", :with => @invalid_user.username
  fill_in "Password", :with => @invalid_user.password
  click_button "Login"
end

Then /^I should get redirected to the login page$/ do
  request.request_uri.should include('/admin/user_sessions')
end

Given /^the user is logged in$/ do
  visit admin_pages_path
  fill_in "Username", :with => @user.username
  fill_in "Password", :with => @user.password
  click_button "Login"
end

When /^I click "([^\"]*)"$/ do |arg1|
  click_link "Logout"
end

Then /^I should get redirect to the login page$/ do
  pending
end