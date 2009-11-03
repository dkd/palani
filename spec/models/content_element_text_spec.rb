require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementText do
  
  before(:each) do
    @content_element = ContentElementText.new( :text => "acbcdskfjlajef" )
  end
  
  describe "validations" do
    
    it "should be valid with a text" do
      @content_element.should be_valid
    end

    it "should not be valid without a text" do
      @content_element.text = nil
      @content_element.should_not be_valid
    end
    
    it "should belong to a ContentElement"
    
  end
  
end
