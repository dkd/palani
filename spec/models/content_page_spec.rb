require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentPage do
  
  before(:each) do
    @content_page = Factory.build(:content_page)
  end
  
  it "should be a child class of Page" do
    @content_page.should be_a_kind_of Page
  end
  
  describe "interface" do
    
    context "icon" do
      
      it "should exist" do
        File.exists?(RAILS_ROOT+"/public"+@content_page.icon).should be_true
      end
      
      it "should be named content_page" do
        File.basename(RAILS_ROOT+"/public"+@content_page.icon).should eql "content_page.png"
      end
      
    end
    
    context "edit_fields" do
    
      it "should return anything" do
        @content_page.edit_fields.should_not be_nil
      end
    
      it "should return an hash" do
        @content_page.edit_fields.should be_an Array
      end
      
      it "should include subtitle" do
        @content_page.edit_fields.should include({ :label => "subtitle", :field_type => "text_field", :value => @content_page.subtitle })
      end
    
    end
    
  end
  
end