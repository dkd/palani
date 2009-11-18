require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementImage do

  before(:each) do
    @content_element = Factory.build(:content_element_image)
  end

  describe "validations" do
    
    it "should belong to a ContentElement" do
      @content_element.should be_valid
    end
    
  end
  
  describe "administration_partial" do
    
    it "should be named administration" do
      File.basename(RAILS_ROOT+"/app/views/"+@content_element.administration_partial).should eql "administration"
    end
    
  end
  
  describe "icon" do
    
    it "should exist" do
      File.exists?(RAILS_ROOT+"/public/images/"+@content_element.icon).should be_true
    end
    
    it "should be named content_element_image" do
      File.basename(RAILS_ROOT+"/public/images/"+@content_element.icon).should eql "content_element_image.png"
    end
    
  end
  
end
