require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')
include ActionController::PolymorphicRoutes
include Admin::ContentElementsHelper

describe Admin::ContentElementsHelper do
  
  before(:all) do
    @page = Page.create( :title => "Test", :type => "ContentPage", :sorting => 1 )
    @content_element = ContentElement.create( :type => "ContentElement" )
    @content_element.page = @page
    @content_element.save
  end
  
  describe "get_title_of" do
    
    it "should not return nil" do
      get_title_of(@content_element).should_not be_nil
    end
    
    it "should return a string" do
      get_title_of(@content_element).should be_a String
    end
    
  end
  
  describe "image_position_types" do
    
    it "should return an Hash" do
      image_position_types.should be_an Hash
    end
    
  end
  
  describe "new_content_element_button" do
    
    it "should return a string" do
      new_content_element_button(nil,1).should be_a String
    end
    
  end
  
  describe "convert_for_panel" do
    
    it "should return an Array" do
      convert_for_panel([]).should be_an Array
    end
    
  end
  
end
