require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementText do
  
  before(:each) do
    @content_element = ContentElementText.new( :text => "acbcdskfjlajef" )
  end
  
  describe "validations" do
    
    it "that has a text should be valid" do
      @content_element.should be_valid
    end

    it "that has no text should be valid" do
      @content_element.text = ""
      @content_element.should be_valid
    end
    
  end
  
end
