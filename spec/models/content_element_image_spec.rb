require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementImage do
  
  before(:each) do
    @content_element = ContentElementImage.new( :image_url => "acbcdskfjlajef.gif" )
  end
  
  describe "validations" do
    
    it "that has an image url should be valid" do
      @content_element.should be_valid
    end

    it "that has no image url should not be valid" do
      @content_element.image_url = ""
      @content_element.should_not be_valid
    end
    
  end
  
  context "gets deleted" do
  
    it"that gets deleted, should not get deleted physically" do
      @content_element.delete
      @content_element.should be_present
    end
    
    it"that gets deleted, should have the flag deleted" do
      @content_element.delete
      @content_element.deleted.should be_true
    end

  end
  
end
