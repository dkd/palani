require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementHtml do
  
  before(:each) do
    @content_element = ContentElementHtml.new( :html => "<br /><i>Text</i>" )
  end
  
  describe "validations" do
    
    it "that has html should be valid" do
      @content_element.should be_valid
    end

    it "that has no html should be valid" do
      @content_element.html = ""
      @content_element.should be_valid
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