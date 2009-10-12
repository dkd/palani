Given /^a logged in user$/ do
  visit logout_path
  visit root_path
  fill_in "Username", :with => "admin"
  fill_in "Password", :with => "test"
  click_button "Login"
end