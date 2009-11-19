require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementsController do

  before(:each) do
    controller.stub!(:render).and_return(nil)
    @page = mock_model(Page)
    Page.stub!(:find).and_return(@page)
    @content_element = mock_model(ContentElement, :page => @page, :destroy => true, :save => false)
    @page.stub!(:content_elements).and_return([@content_element])
    ContentElement.stub!(:find).and_return(@content_element)
    ContentElement.stub!(:new).and_return(@content_element)
    @content_element.stub!(:from_content_element).and_return(nil)
    @content_element.stub!(:create_element_type).and_return(nil)
    login_admin
  end
  
  describe "find_element" do
    
    it "should exist" do
      Admin::ContentElementsController.filter_chain.find(:find_element).should_not be_nil
    end
    
    it "should find the content element requested" do
      ContentElement.should_receive(:find)
      controller.send :find_element
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_element
      controller.send(:instance_variable_get, :@content_element).should equal @content_element
    end
    
  end
  
  describe "GET /admin/pages/1/content_elements/new" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :new, :page_id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :new, :page_id => 1
      response.should_not be_success
    end
    
    it "should create a new content element" do
      ContentElement.should_receive(:new)
      xhr :get, :new, :page_id => 1
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :new, :page_id => 1
    end
    
  end

  describe "POST /admin/pages/1/content_elements/" do
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :create, :page_id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :create, :page_id => 1
      response.should_not be_success
    end
    
    it "should create a new content element" do
      ContentElement.should_receive(:new)
      xhr :post, :create, :page_id => 1
    end
    
    it "should create the sorting" do
      @content_element.should_receive(:from_content_element)
      xhr :post, :create, :page_id => 1
    end
    
    it "should render the pages show page" do
      @content_element.stub!(:save).and_return(true)
      xhr :post, :create, :page_id => 1
      controller.send(:instance_variable_get, :@partial_file).should eql "admin/pages/show"
    end
    
    it "should render the new form again, if the content element submitted is invalid" do
      @content_element.stub!(:save).and_return(false)
      xhr :post, :create, :page_id => 1
      controller.send(:instance_variable_get, :@partial_file).should eql "new"
    end
    
  end

  describe "GET /admin/pages/1/content_elements/1/edit" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :edit, :page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :edit, :page_id => 1, :id => 1
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :edit, :page_id => 1, :id => 1
    end
    
  end
  
  describe "PUT /admin/pages/1/content_elements/1" do
    
    before(:each) do
      @content_element.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update, :page_id => 1, :id => 1
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :update, :page_id => 1, :id => 1
    end
    
    it "should add /added_succesfully/ as flash, if the text got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :page_id => 1, :id => 1
      flash.now[:notice].should eql "changes_saved_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the text did not get saved" do
      @content_element.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :page_id => 1, :id => 1
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "DELETE /admin/pages/1/content_elements/1" do
    
    it "should be accessible, if we are authenticated" do
      xhr :delete, :destroy, :page_id => 1, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :delete, :destroy, :page_id => 1, :id => 1
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :delete, :destroy, :page_id => 1, :id => 1
    end
    
    it "should destroy the content element requested" do
      @content_element.should_receive(:destroy)
      xhr :delete, :destroy, :page_id => 1, :id => 1
    end
    
    it "should add /uploading_failed/ as flash" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :delete, :destroy, :page_id => 1, :id => 1
      flash.now[:notice].should eql "deleted_succesfully"
    end
    
  end

end