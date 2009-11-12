require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ShortcutPage do
  
  before(:each) do
    @shortcut_page = Factory.build(:shortcut_page)
  end
  
  it "should be a child class of Page" do
    @shortcut_page.should be_a_kind_of Page
  end
  
  describe "mode" do
    
    it "should return shortcut_mode" do
      @shortcut_page.mode.should eql @shortcut_page.shortcut_mode
    end
    
    it "should not be empty" do
      @shortcut_page.mode.should_not be_empty
    end
    
    context "internal page" do
      
      before(:each) do
        @shortcut_page.shortcut_mode = "internal_page"
      end
      
      it "should not be valid without a shortcut page id" do
        @shortcut_page.should_not be_valid
      end
      
      it "should be valid having a shortcut page id" do
        @shortcut_page.shortcut_page_id = 1
        @shortcut_page.should be_valid
      end
      
    end
    
    context "external url" do
      
      before(:each) do
        @shortcut_page.shortcut_mode = "external_url"
      end
      
      it "should not be valid having an invalid external url" do
        @shortcut_page.ext_url = "hallo"
        @shortcut_page.should_not be_valid
      end
      
      it "should be valid having a valid external url" do
        @shortcut_page.ext_url = "http://palani.org"
        @shortcut_page.should be_valid
      end
      
    end
    
  end
  
  describe "interface" do
    
    context "icon" do
      
      it "should exist" do
        File.exists?(RAILS_ROOT+"/public"+@shortcut_page.icon).should be_true
      end
      
      it "should be named shortcut_page" do
        File.basename(RAILS_ROOT+"/public"+@shortcut_page.icon).should eql "shortcut_page.png"
      end
      
    end
    
    context "edit_fields" do
    
      it "should return anything" do
        @shortcut_page.edit_fields.should_not be_nil
      end
    
      it "should return an hash" do
        @shortcut_page.edit_fields.should be_an Array
      end
    
    end
    
  end
  
end