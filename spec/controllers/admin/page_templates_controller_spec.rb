require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::PageTemplatesController do

  before(:each) do
    @page_template = mock_model(PageTemplate)
    PageTemplate.stub!(:find).and_return(@page_template)
    PageTemplate.stub!(:new).and_return(@page_template)
    controller.stub!(:render).with(:update)
    login_admin
  end

  describe "find_template" do
    
    it "should exist" do
      Admin::PageTemplatesController.filter_chain.find(:find_template).should_not be_nil
    end
    
    it "should find the content element requested" do
      PageTemplate.should_receive(:find)
      controller.send :find_template
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_template
      controller.send(:instance_variable_get, :@page_template).should equal @page_template
    end
    
  end

  describe "actionize" do
  end

  describe "GET /admin/page_templates" do
    
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
      xhr :get, :index
      controller.send(:instance_variable_get, :@partial_file).should eql "index"
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :index
    end
    
    context "json" do
      
      it "should actionize the templates" do
        controller.should_receive(:actionize)
        xhr :get, :index, :format => "json"
      end
      
    end
    
  end
  
  describe "GET /admin/page_templates/new" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :new
      response.should be_success 
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :new
      response.should_not be_success
    end
    
    it "should create a new page template" do
      PageTemplate.should_receive(:new)
      xhr :get, :new
    end
    
  end
  
  describe "POST /admin/page_templates" do
    
    before(:each) do
      @page_template.stub!(:save).and_return(true)
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
    
    it "should create a new page template" do
      PageTemplate.should_receive(:new)
      xhr :post, :create
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :post, :create
    end
     
    it "should render the partial index" do
      xhr :post, :create
      controller.send(:instance_variable_get,:@partial_file).should eql "index"
    end
    
    it "should render the partial new, if anything went wrong" do
      @page_template.stub!(:save).and_return(false)
      xhr :post, :create
      controller.send(:instance_variable_get,:@partial_file).should eql "new"
    end
    
  end
  
  describe "GET /admin/page_templates/1/edit" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :edit, :id => 1
      response.should be_success 
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :edit, :id => 1
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :edit, :id => 1
    end
    
  end
  
  describe "PUT /admin/page_templates/1" do
    
    before(:each) do
      @page_template.stub!(:update_attributes).and_return(true)
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
    
    it "should update the attributes of the page templates" do
      @page_template.should_receive(:update_attributes)
      xhr :put, :update, :id => 1
    end
    
  end
  
  describe "DELETE /admin/page_templates/1" do
    
    before(:each) do
      @page_template.stub!(:destroy).and_return(true)
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
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :delete, :destroy, :id => 1
    end
    
  end
  
  describe "PUT /admin/page_templates/1/parse_elements" do
    
    before(:each) do
      @page_template.stub!(:update_attributes).and_return(true)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :parse_elements, :id => 1
      response.should be_success 
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :parse_elements, :id => 1
      response.should_not be_success
    end
    
    it "should update the attributes of the page template requested" do
      @page_template.should_receive(:update_attributes)
      xhr :put, :parse_elements, :id => 1
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :parse_elements, :id => 1
    end
    
  end

end