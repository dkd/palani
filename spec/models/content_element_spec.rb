require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElement do

  before(:each) do
    @content_element = ContentElement.new( :page_id => 1, :type => "ContentElement" )
  end
  
  describe "validations" do
    
    it "that belongs to a page and has a type is valid" do
      @content_element.should be_valid
    end

    it "that does not belong to a page should not be valid" do
      @content_element.page_id = nil
      @content_element.should_not be_valid
    end
    
  end
  
  it"should have a Content Element, if its type is not 'ContentElement'"

end