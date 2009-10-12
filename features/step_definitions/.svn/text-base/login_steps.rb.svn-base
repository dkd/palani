Given /^a valid user$/ do
  @user = User.new( :username => "admin", :password => "test" )
end

When /^I put his username and correct password into the form$/ do
  visit root_path
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
  visit root_path
  fill_in "Username", :with => @invalid_user.username
  fill_in "Password", :with => @invalid_user.password
  click_button "Login"
end

Then /^I should get redirected to the login page$/ do
  request.request_uri.should include('/admin/user_sessions')
end

Given /^the user is logged in$/ do
  visit root_path
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