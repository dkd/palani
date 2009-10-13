require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PermissionGroup do
  
  before(:each) do
    @permission_group = PermissionGroup.new( :name => "test group"  )
  end
  
  describe "validations" do
    
    it "should be valid with a name" do
      @permission_group.should be_valid
    end
    
    it "should not be valid without a name" do
      @permission_group.name = ""
      @permission_group.should_not be_valid
    end
    
    it "should have an unique name" do
      @temp_permission_group = PermissionGroup.new( :name => "test group" )
      @permission_group.save
      @temp_permission_group.should_not be_valid
    end
    
  end
  
end
