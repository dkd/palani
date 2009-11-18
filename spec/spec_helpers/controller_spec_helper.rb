module DisableFlashSweeping
  def sweep
  end
end
module ControllerSpecHelper
 
  def get_action
    action_name = example_group_hierarchy[-2].description_args.first.delete(':')
    action_name.to_sym
  end
 
  shared_examples_for "an action that requires logged out user" do
 
    describe "Requires logged out user" do
 
      before(:each) do
        mock_log_user(mock_user)
      end
 
      it "should not be successful with logged in user" do
        get get_action
        response.should_not be_success
      end
 
      it "should redirect to account with logged in user" do
        get get_action
        should redirect_to(account_url)
      end
 
      it "should have /must be logged out/ in the flash with logged in user" do
        get get_action
        should set_the_flash(:to => /must be logged out/)
      end
 
    end
 
  end
 
  shared_examples_for "an action that requires logged in user" do
 
    describe "Requires logged in user" do
 
      before(:each) do
        UserSession.stub!(:find => nil)
      end
 
      it "should not be successful with logged out user" do
        get get_action
        response.should_not be_success
      end
 
      it "should redirect to login page with logged out user" do
        get get_action
        should redirect_to(login_path)
      end
 
      it "should have /must be logged in/ in the flash with logged out user" do
        get get_action
        should set_the_flash(:to => /must be logged in/)
      end
 
    end
 
  end
 
end