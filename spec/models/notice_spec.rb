require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Notice do
  
  before(:all) do
    @page = Page.new( :title => "New page", :type => "ContentPage" )
  end
  
  before(:each) do
    @notice = Notice.new( :title => "Test", :text => "yes.")
  end

  describe "validations" do
    
    it "should belong to a user"
    it "should belong to a page or content element"
    
    it "should be valid with a title and a text" do
      @notice.title = "Test"
      @notice.element = @page
      @notice.should be_valid
    end
    
    it "should only be valid with a title" do
      @notice.title = ""
      @notice.should_not be_valid
      @notice.title = "Test"
      @notice.should be_valid
    end
    
    it "should belong to a element"
    
  end
  
end
