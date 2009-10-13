require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Notice do
  
  before(:all) do
    @page = Page.new( :title => "New page", :type => "ContentPage" )
  end
  
  before(:each) do
    @notice = Notice.new( :title => "Test", :text => "yes.")
  end
  
  context "that gets deleted" do
    
    it "should not get deleted physically" do
      @notice.delete
      @notice.should_not be_nil
    end
    
  end

  describe "validations" do
    
    it "should belong to a user"
    it "should belong to a page or content element"
    
    it "should not be valid without a title" do
      @notice.title = nil
      @notice.should_not be_valid
    end
    
    it "should not be valid without an element" do
      @notice.element_id = nil
      @notice.should_not be_valid
    end
    
  end
  
end
