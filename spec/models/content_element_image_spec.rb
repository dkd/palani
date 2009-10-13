require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementImage do
  
  before(:each) do
    @content_element = ContentElementImage.new( :image_url => "acbcdskfjlajef.gif" )
  end
  
  describe "validations" do
    
    it "should be valid with an image url" do
      @content_element.should be_valid
    end

    it "should not be valid without an image url" do
      @content_element.image_url = nil
      @content_element.should_not be_valid
    end
    
    it "should belong to a ContentElement"
    
  end
  
end
