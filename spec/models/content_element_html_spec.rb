require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementHtml do
  
  before(:each) do
    @content_element = Factory.build(:content_element_html, :html => "<br /><i>Text</i>")
  end
  
  describe "validations" do
  
    it "should belong to a ContentElement" do
      @content_element.should be_valid
    end
    
  end
  
end