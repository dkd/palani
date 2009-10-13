require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Page do
  
  before(:each) do
    @page = Page.new( :title => "New page", :type => "ContentPage", :sorting => 1 )
  end
  
  context "that gets deleted" do
    
    it "should not get deleted physically" do
      @page.delete
      @page.should_not be_nil
    end
    
  end
  
  describe "named scopes" do
    it "should have a named scope called `having_sorting_bigger_than`"
  end
  
  describe "validations" do
    
    it "should not be valid without a title" do
      @page.title = nil
      @page.should_not be_valid
    end

    it "should not be valid without a type" do
      @page.type = nil
      @page.should_not be_valid
    end
    
    it "should not be valid without a sorting" do
      @page.sorting = nil
      @page.should_not be_valid
    end
    
  end
  
  # text is needed by extjs
  it "should return its title, if the text was called" do
    @page.text.should be_eql @page.title
  end
  
  it "should be a leaf, if it has no children" do
    @page.is_leaf?.should be_true
  end
  
  it "should not be a leaf, if it has any children" do
    @page.save
    @page.children.create( :title => "Child", :type => "ContentPage" )
    @page.is_leaf?.should be_false
  end
  
  it "should have a valid icon" do
    File.exists?(RAILS_ROOT+"/public"+@page.icon).should be_true
  end

end