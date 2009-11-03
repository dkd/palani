require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementHtml do
  
  before(:each) do
    @content_element = ContentElementHtml.new( :html => "<br /><i>Text</i>" )
  end
  
  describe "validations" do
    
    it "should be valid with html" do
      @content_element.should be_valid
    end

    it "should not be valid without html" do
      @content_element.html = nil
      @content_element.should_not be_valid
    end
    
    it "should belong to a ContentElement"
    
  end
  
end