Given /^a valid page$/ do
  @page = Factory.create(:content_page, :name => "Testpage")
end