require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementsController do
  
  before(:all) do
    @page = Page.create :title => "test", :sorting => 1, :type => "ContentPage"
  end
  
  before(:each) do
    login_admin
  end
  
  describe "actions" do
    
    describe "new" do
      
      it "should be accessible, if we are authenticated" do
        get :new, :page_id => @page.id
        response.should be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        public_user
        get :new, :page_id => @page.id
        response.should_not be_success
      end
      
      it "should render an invalid content element" do
        get :new, :page_id => @page.id
        controller.send(:instance_variable_get,:@content_element).should_not be_valid
      end
      
    end
    
    describe "create" do
      
      it "should be accessible, if we are authenticated" do
        post :create, :page_id => @page.id
        response.should be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        public_user
        post :create, :page_id => @page.id
        response.should_not be_success
      end
      
    end
    
    describe "render_type_settings" do
      
      before(:all) do
        @content_element = ContentElement.create :element_type => "ContentElement", :page_id => @page.id
      end
      
      it "should be accessible, if we are authenticated" do
        get :render_type_settings, :id => @content_element.id, :type => "ContentElement"
        response.should be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        public_user
        get :render_type_settings, :id => @content_element.id, :type => "ContentElement"
        response.should_not be_success
      end
      
      it "should update the type of the content element" do
        get :render_type_settings, :id => @content_element.id, :type => "ContentElementText"
        ContentElement.find(@content_element.id).element_type.should eql "ContentElementText"
      end
      
    end
    
    describe "destroy" do
      
      before(:each) do
        @content_element_to_destroy = ContentElement.create :element_type => "ContentElement", :page_id => @page.id
      end
      
      it "should be accessible, if we are authenticated" do
        delete :destroy, :id => @content_element_to_destroy.id
        response.should be_success
      end
      
      it "should not be accessible, if we are authenticated" do
        public_user
        delete :destroy, :id => @content_element_to_destroy.id
        response.should_not be_success
      end
      
      it "should delete the content element" do
        delete :destroy, :id => @content_element_to_destroy.id
        lambda { ContentElement.find(@content_element_to_destroy.id)  }.should raise_error
      end
      
    end
    
    describe "edit" do
      
      before(:all) do
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
    
  end

end
