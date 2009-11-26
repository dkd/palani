require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElement do

  before(:each) do
    @content_element = Factory.build(:content_element)
  end
  
  describe "from_content_element" do
    
    before(:each) do
      @page = Factory(:page)
    end
    
    it "should have a sorting 1, if no other content element is given" do
      @content_element.from_content_element(@page.id)
      @content_element.sort.should == 1
    end
    
    it "should have a bigger sorting than the other content element, if the other it is given" do
      @new_content_element = Factory(:content_element)
      @content_element.from_content_element(@page.id, @new_content_element.id)
      @content_element.sort.should > @new_content_element.sort
    end
    
  end
  
  describe "create_element_type" do
    
    before(:each) do
      @content_element = Factory(:content_element, :element_type => "ContentElementText")
    end
    
    it "should create a new content element, if its element_type is not ContentElement" do
      @content_element.create_element_type.should be_a Kernel.const_get(@content_element.element_type)
    end
    
    it "should return a content element, if it already exists" do
      @content_element.create_element_type
      Kernel.const_get(@content_element.element_type).find_by_content_element_id(@content_element).should == @content_element.create_element_type
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
    
    it "should return the partial name of the content element type, if its type is not ContentElement" do
      @content_element_text = Factory(:content_element_text)
      @content_element_text.content_element.administration_partial.should eql @content_element_text.administration_partial
    end
    
  end
  
  describe "icon" do
    
    it "should exist" do
      File.exists?(RAILS_ROOT+"/public/images/"+@content_element.icon).should be_true
    end
    
    it "should be named content_element" do
      File.basename(RAILS_ROOT+"/public/images/"+@content_element.icon).should eql "content_element.png"
    end
    
    it "should return the icon of the content element type, if its type is not ContentElement" do
      @content_element_text = Factory(:content_element_text)
      @content_element_text.content_element.icon.should eql @content_element_text.icon
    end
    
  end
  
  context "that gets deleted" do
  
    it "should not get deleted physically" do
      @content_element.delete
      @content_element.should_not be_nil
    end
  
  end

end