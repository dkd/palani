require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::ImagesController do
  
  before(:each) do
    @image = mock_model(Image, :save => true)
    Image.stub!(:new).and_return(@image)
    login_admin
  end

  describe "POST /admin/images" do
    
    it "should be accessible, if we are authenticated" do
      xhr :post, :create
      response.should be_success 
    end
    
    it "should not be accessible, if we are not authenticated" do
      public_user
      xhr :post, :create
      response.should_not be_success
    end
    
    it "should create a new image" do
      Image.should_receive(:new).and_return(@image)
      xhr :post, :create
    end
    
    it "should add /added_succesfully/ as flash, if the image got saved" do
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :post, :create
      flash.now[:notice].should eql "added_succesfully"
    end
    
    it "should add /uploading_failed/ as flash, if the image did not get saved" do
      @image = mock_model(Image, :save => false)
      Image.stub!(:new).and_return(@image)
      @controller.instance_eval { flash.extend(DisableFlashSweeping) }
      xhr :post, :create
      flash.now[:error].should eql "uploading_failed"
    end
    
  end

end
