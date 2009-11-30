require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ContentElementTemplatesController do

  before(:each) do
    login_admin
  end

  describe "find_template" do
    
    before(:each) do
      @content_element_template = mock_model(ContentElementTemplate)
      ContentElementTemplate.stub!(:find).and_return(@content_element_template)
    end
    
    it "should exist" do
      Admin::ContentElementTemplatesController.filter_chain.find(:find_template).should_not be_nil
    end
    
    it "should find the content element requested" do
      ContentElementTemplate.should_receive(:find)
      controller.send :find_template
    end
    
    it "should save the content element requested in a instance variable" do
      controller.send :find_template
      controller.send(:instance_variable_get, :@content_element_template).should equal @content_element_template
    end
    
  end
  
  describe "actionize" do
    
    before(:each) do
      @content_element_template = mock_model(ContentElementTemplate)
      @content_element_template.stub!(:actions).and_return("Test actions")
      @content_element_template.stub!(:clean_code).and_return("Clean code")
      @content_element_template.stub!(:[]=).with(:actions, "Test actions")
      @content_element_template.stub!(:[]=).with(:code, "Clean code")
      @content_element_template.stub!(:[]).with(:actions).and_return("Test actions")
      @content_element_template.stub!(:[]).with(:clean_code).and_return("Clean code")
      @content_element_templates = [@content_element_template]
    end
    
    it "should return actionized actions" do
      controller.send :actionize, @content_element_templates
      @content_element_templates.each { |u| u[:actions].should eql @content_element_template.actions }
    end
    
  end
  
  describe "GET /admin/content_element_templates" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :index
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :index
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :index
    end
    
    it "should render the partial index" do
      xhr :get, :index
      assigns[:partial_file].should eql "index"
    end
    
  end
  
  describe "GET /admin/content_element_templates/new" do
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :new
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :new
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :new
    end
    
  end
  
  describe "POST /admin/content_element_templates" do
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :create
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :create
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :post, :create
    end
    
  end
  
  describe "GET /admin/content_element_templates/1/edit" do
    
    before(:each) do
      @saved_template = Factory(:content_element_template)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :get, :edit, :id => @saved_template.id
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :get, :edit, :id => @saved_template.id
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :get, :edit, :id => @saved_template.id
    end
    
  end
  
  describe "PUT /admin/content_element_templates/1" do
    
    before(:each) do
      @saved_template = Factory(:content_element_template)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :put, :update, :id => @saved_template.id
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :put, :update, :id => @saved_template.id
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :put, :update, :id => @saved_template.id
    end
    
  end
  
  describe "DELETE /admin/content_element_templates/1" do
    
    before(:each) do
      @saved_template = Factory(:content_element_template)
    end
    
    it "should be accessible, if we are authenticated" do
      xhr :delete, :destroy, :id => @saved_template.id
      response.should be_success
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :delete, :destroy, :id => @saved_template.id
      response.should_not be_success
    end
    
    it "should render an update" do
      controller.should_receive(:render).with(:update)
      xhr :delete, :destroy, :id => @saved_template.id
    end
    
  end

end