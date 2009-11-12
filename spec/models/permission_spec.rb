require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Permission do
  
  before(:each) do
    @permission = Factory(:permission, :name => "Administration")
  end
  
  it "should belong to the PermissionGroup `others`, if no permission_group is given" do
    Factory(:permission_group, :name => "others")
    @permission.permission_group = nil
    @permission.save
    @permission.permission_group.name.should be_eql "others"
  end
  
  context "all_users" do
    
    it "should return an Array" do
      @permission.all_users.should be_an Array
    end
    
    it "should return only User objects" do
      @permission.all_users.each { |user|
        user.should be_an User
      }
    end
    
  end
  
  context "for_user_groups" do
    
    it "should return an Array" do
      Permission.for_user_groups.should be_an Array
    end
    
    it "should return only User objects" do
      Permission.for_user_groups.each { |p|
        p.should be_an Permission
      }
    end
    
  end
  
end