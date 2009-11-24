require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::PagesController do

  before(:each) do
    @page = mock_model(Page, :content_elements => [])
    @content_page = mock_model(ContentPage, :content_elements => [], :id => 1, :icon => '', :title => '', :type => 'ContentPage')
    Page.stub!(:find).and_return(@page)
    Page.stub!(:new).and_return(@page)
    controller.stub!(:render).and_return(nil)
    login_admin
  end
  
  describe "find_page" do
    
    it "should exist" do
      Admin::PagesController.filter_chain.find(:find_page).should_not be_nil
    end
    
    it "should find the page requested" do
      Page.should_receive(:find)
      controller.send :find_page
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_page
      controller.send(:instance_variable_get, :@page).should equal @page
    end
    
  end
  
  describe "GET /admin/pages" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :index
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :index
      response.should_not be_success
    end
    
    it "should render the index partial" do
      controller.send :index
      controller.send(:instance_variable_get, :@partial_file).should eql "index"
    end
    
  end
  
  describe "GET /admin/pages/1" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :show, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :show, :id => 1
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :show, :id => 1
    end
    
  end
  
  describe "POST /admin/pages" do
    
    before(:each) do
      ContentPage.stub!(:new).and_return(@content_page)
      @content_page.stub!(:update_sorting).and_return(nil)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :create
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :create
      response.should_not be_success
    end
    
    it "should create a new content page" do
      ContentPage.should_receive(:new)
      xhr :post, :create
    end
    
    it "should update the sorting" do
      @content_page.should_receive(:update_sorting)
      xhr :post, :create
    end
    
  end
  
  describe "PUT /admin/pages/1" do
    
    before(:each) do
      @page.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update, :id => 1
      response.should_not be_success
    end
    
    it "should update the page" do
      @page.should_receive(:update_attributes)
      xhr :put, :update, :id => 1
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :update, :id => 1
    end
    
    it "should add /added_succesfully/ as flash, if the page got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :id => 1
      flash.now[:notice].should eql "changes_saved_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the page did not get saved" do
      @page.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update, :id => 1
      flash.now[:error].should eql "check_your_input"
    end
    
  end
  
  describe "PUT /admin/pages/1/update_new" do
    
    before(:each) do
      @page.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update_new, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update_new, :id => 1
      response.should_not be_success
    end
    
    it "should update the page requested" do
      @page.should_receive(:update_attributes)
      xhr :put, :update_new, :id => 1
    end
    
    it "should add /added_succesfully/ as flash, if the page got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update_new, :id => 1
      flash.now[:notice].should eql "added_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the page did not get saved" do
      @page.stub!(:update_attributes).and_return(false)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :put, :update_new, :id => 1
      flash.now[:error].should eql "check_your_input"
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :update_new, :id => 1
    end
    
  end
  
  describe "DELETE /admin/pages/1" do
    
    before(:each) do
      @page.stub!(:delete).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :delete, :destroy, :id => 1
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :delete, :destroy, :id => 1
      response.should_not be_success
    end
    
    it "should delete the page requested" do
      @page.should_receive(:delete)
      xhr :delete, :destroy, :id => 1
    end
    
  end
  
  describe "GET /admin/pages/render_type_settings" do
    
    before(:each) do
      @page.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :render_type_settings
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :render_type_settings
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :render_type_settings
    end
    
  end
  
  describe "GET /admin/pages/move" do
    
    before(:each) do
      @page.stub!(:update_sorting).and_return(nil)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :move
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :move
      response.should_not be_success
    end
    
    it "should update the sorting" do
      @page.should_receive(:update_sorting)
      xhr :get, :move
    end
    
  end

end