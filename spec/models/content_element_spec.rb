require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElement do

  before(:all) do
    @page = Page.create( :title => "Test", :type => "ContentPage", :sorting => 1 )
  end

  before(:each) do
    @content_element = ContentElement.new( :type => "ContentElement" )
    @content_element.page = @page
  end
  
  describe "validations" do
    
    it "should be valid with a page and a type" do
      @content_element.should be_valid
    end

    it "should not be valid without a page" do
      @content_element.page = nil
      @content_element.should_not be_valid
    end
    
    it "should not be valid without a type" do
      @content_element.element_type = nil
      @content_element.should_not be_valid
    end
    
  end
  
  context "that gets deleted" do
  
    it "should not get deleted physically"
    
    it "should get a deleted_at flag"
  
  end
  
  it"should have a Content Element, if its type is not 'ContentElement'"

end