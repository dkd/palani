require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Page do
  
  before(:each) do
    @page = Page.new( :title => "New page", :type => "ContentPage" )
  end
  
  describe "named scopes" do
    
    it "should have a named scope called deleted"
    
  end
  
  describe "validations" do
    
    it "without a title should not be valid" do
      @page.title = ""
      @page.should_not be_valid
    end

    it "without a type should not be valid" do
      @page.type = ""
      @page.should_not be_valid
    end
    
  end
  
  it "that has type shortcut, should have a shortcut mode" do
    @page.type = "ShortcutPage"
    @page.shortcut_mode = "internal"
    @page.shortcut_mode.should_not be_blank
  end
  
  it "that is a shortcut to an url, should have a url as destination" do
    @page.type = "ShortcutPage"
    @page.shortcut_mode = "internal"
    @page.ext_url = "http://www.heise.de"
    @page.ext_url.should_not be_blank
  end

  it "that is a shortcut to a page, should have a page id as destination" do
    @page.type = "ShortcutPage"
    @page.shortcut_mode = "external"
    @page.shortcut_page_id = 1
    @page.shortcut_page_id.should_not be_blank
  end

  it "that is a shortcut to a page, should have a valid page is as destination" do
    @page.type = "ShortcutPage"
    @page.shortcut_mode = "internal"
    @page.shortcut_page_id = 1
    
    @destination = Page.find(:first, @page.shortcut_page_id)
    @destination.should_not be_blank
  end
  
  context "gets deleted" do
  
    it"that gets deleted, should not get deleted physically" do
      @page.delete
      @page.should be_present
    end
    
    it"that gets deleted, should have the flag deleted" do
      @page.delete
      @page.deleted.should be_true
    end

  end

end