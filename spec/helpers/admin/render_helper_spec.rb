require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::RenderHelper do
  
  before(:each) do
    helper.stub!(:render)
  end
  
  describe "render_main_menu" do
    
    it "should render the partial" do
      helper.should_receive(:render)
      helper.render_main_menu("admin/pages")
    end
    
  end

  describe "render_ext_panel" do
    
    it "should render the partial" do
      helper.should_receive(:render)
      helper.render_ext_panel([])
    end
    
  end
  
  describe "render_right_col" do
    
    it "should render the partial" do
      helper.should_receive(:render)
      helper.render_right_col
    end
    
  end
  
  describe "render_page_path" do
    
    it "should render the partial" do
      helper.instance_variable_set(:@page, Factory.build(:page))
      helper.should_receive(:render)
      helper.render_page_path
    end
    
  end
  
  describe "render_text_editor" do
    
    it "should render the partial" do
      helper.should_receive(:render)
      helper.render_text_editor("Name")
    end
    
  end
  
  describe "render_multi_select" do
    
    it "should render the partial" do
      helper.should_receive(:render)
      helper.render_multi_select("test", nil)
    end
    
  end

end