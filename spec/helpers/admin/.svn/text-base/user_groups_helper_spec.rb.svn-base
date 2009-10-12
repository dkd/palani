require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')
include Admin::UserGroupsHelper

describe Admin::UserGroupsHelper do
  
  describe "admin_user_group" do
    before(:all) do
      UserGroup.create(:name => "Administrators")
      @user_group = admin_user_group
    end
    
    it "should return a user group with the name 'Administrators'" do
      @user_group.name.should eql("Administrators")
    end
    
  end

end
