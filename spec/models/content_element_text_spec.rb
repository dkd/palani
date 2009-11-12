require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementText do
  
  before(:each) do
    @content_element = Factory.build(:content_element_text, :text => "acbcdskfjlajef")
  end
  
  describe "clean_text" do
    
    it "should not contain any html tags" do
      @content_element.create_clean_text
      @content_element.clean_text.should_not match /<\/?[^>]*>/
    end
    
  end
  
  describe "validations" do
    
    it "should not be valid without being associated with a content element"
    it "should be valid being associated with a content element"
    
  end
  
end
