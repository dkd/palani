require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentPage do
  
  before(:each) do
    @content_page = ContentPage.new( :title => "Test" )
  end
  
  it "should be a child class of Page" do
    @content_page.should be_a_kind_of Page
  end
  
end