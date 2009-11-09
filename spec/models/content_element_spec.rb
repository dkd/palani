require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElement do

  before(:all) do
    @page = Page.create( :title => "Test", :type => "ContentPage", :sorting => 1 )
  end

  before(:each) do
    @content_element = ContentElement.create( :element_type => "ContentElement", :page_id => @page.id )
  end
  
  describe "from_content_element" do
    
    it "should belong to the page, that is given as param"
    it "should have a sorting 1, if no other content element is given"
    it "should have a bigger sorting than the other content element, if the other it is given"
    
  end
  
  describe "create_element_type" do
    
    before(:each) do
      @content_element = ContentElement.create( :element_type => "ContentElementText", :page_id => @page.id )
    end
    
    it "should create a new content element, if its element_type is not ContentElement" do
      @content_element.create_element_type
      ContentElementText.find_by_content_element_id(@content_element.id)
    end
    
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
  
  describe "administration_partial" do
    
    it "should be named administration" do
      File.basename(RAILS_ROOT+"/app/views/"+@content_element.administration_partial).should eql "administration"
    end
    
  end
  
  describe "icon" do
    
    it "should exist" do
      File.exists?(RAILS_ROOT+"/public/images/"+@content_element.icon).should be_true
    end
    
    it "should be named page" do
      File.basename(RAILS_ROOT+"/public/images/"+@content_element.icon).should eql "content_element.png"
    end
    
  end
  
  context "that gets deleted" do
  
    it "should not get deleted physically" do
      @content_element.delete
      @content_element.should_not be_nil
    end
  
  end

end