require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Page do
  
  before(:each) do
    @page = Factory(:page)
  end
  
  describe "interface" do
    
    context "icon" do
      
      it "should exist" do
        File.exists?(RAILS_ROOT+"/public"+@page.icon).should be_true
      end
      
      it "should be named page" do
        File.basename(RAILS_ROOT+"/public"+@page.icon).should eql "page.png"
      end
      
    end
    
    context "edit_fields" do
    
      it "should return anything" do
        @page.edit_fields.should_not be_nil
      end
    
      it "should return an hash" do
        @page.edit_fields.should be_an Array
      end
    
    end
    
  end
  
  describe "that gets deleted" do
    
    it "should not get deleted physically" do
      @page.delete
      @page.should_not be_nil
    end
    
  end
  
  describe "that appends another page" do
    
    before(:each) do
      @appending_page = Factory(:page)
      @page.update_sorting @appending_page, "append"
    end
    
    it "should be no leaf" do
      @appending_page.is_leaf?.should be false
    end
    
  end
  
  describe "that gets dropped" do
    
    before(:each) do
      @drop_page = Factory(:page)
    end
    
    context "above another page" do
      
      before(:each) do
        @page.update_sorting @drop_page, "above"
      end
      
      it "should have a sorting greater than or equals 1" do
        @page.sorting.should be >= 1
      end
      
      it "should have the others parent page as parent" do
        @page.parent_id.should equal @drop_page.parent_id
      end
      
      it "should have a smaller sorting than the other page after dropping" do
        @page.sorting.should be <= @drop_page.sorting
      end
      
    end
    
    context "into another page" do
      
      before(:each) do
        @page.update_sorting @drop_page, "append"
      end
      
      it "should have the other page as parent" do
        @page.parent_id.should equal @drop_page.id
      end
      
      it "should have sorting=1" do
        @page.sorting.should equal 1
      end
      
    end
    
    context "below another page" do
      
      before(:each) do
        @page.update_sorting @drop_page, "below"
      end
      
      it "should have a sorting greater than or equals 1" do
        @page.sorting.should be >= 1
      end
      
      it "should have the others parent page as parent" do
        @page.parent_id.should equal @drop_page.parent_id
      end
      
      it "should have a greater sorting than the other page after dropping" do
        @page.sorting.should be >= @drop_page.sorting
      end
      
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
    @page.should be_valid
    @page.children.create( :title => "Child", :type => "ContentPage", :sorting => 1 )
    @page.is_leaf?.should be_false
  end

end