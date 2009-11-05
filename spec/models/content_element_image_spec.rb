require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementImage do
  
  before(:each) do
    @content_element = ContentElementImage.new( :image_url => "acbcdskfjlajef.gif" )
  end
  
  describe "validations" do
    
    it "should belong to a ContentElement"
    
  end
  
end
