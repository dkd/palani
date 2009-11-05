require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementText do
  
  before(:each) do
    @content_element = ContentElementText.new( :text => "acbcdskfjlajef" )
  end
  
  describe "validations" do
    
    it "should belong to a ContentElement"
    
  end
  
end
