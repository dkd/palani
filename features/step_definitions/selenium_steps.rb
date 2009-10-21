Then /^I should see "([^\"]*)" in "([^\"]*)"$/ do |text, selector|
  response_body.should have_tag(selector, /#{Regexp.escape(text)}/)
end