require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementsController do
  
  before(:each) do
    login_admin
  end
  
  describe "actions" do
    
    describe "new" do
      
    end
    
    describe "create" do
      
    end
    
    describe "render_type_settings" do
      
    end
    
    describe "edit" do
      
      before(:all) do
        @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
        @content_element = ContentElement.create :element_type => "ContentElement", :page_id => @page.id
      end
      
      it "should be accessible, if we are authenticated" do
        get :edit, :page_id => @page.id, :id => @content_element.id
        response.should be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        public_user
        get :edit, :page_id => @page.id, :id => @content_element.id
        response.should_not be_success
      end
      
      it "should render the content element having the id given by the param" do
        get :edit, :page_id => @page.id, :id => @content_element.id
        controller.send(:instance_variable_get, :@content_element).should == ContentElement.find(@content_element.id)
      end
      
    end
    
    describe "destroy" do
      
    end
    
  end

end
