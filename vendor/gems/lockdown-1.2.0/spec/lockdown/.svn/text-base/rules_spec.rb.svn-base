require File.join(File.dirname(__FILE__), %w[.. spec_helper])

class TestSystem; extend Lockdown::Rules; end

describe Lockdown::Rules do
  before do
    @rules = TestSystem
    @rules.set_defaults
  end

  describe "#set_permission" do
    it "should create and return a Permission object" do
      @rules.set_permission(:user_management).
        should == Lockdown::Permission.new(:user_management) 
    end
  end

  describe "#set_public_access" do
    it "should define the permission as public" do
      @rules.set_permission(:user_management)
      @rules.set_public_access(:user_management)
    end
  end

  describe "#set_public_access" do
    it "should define the permission as public" do
      @rules.set_permission(:home_page)
      @rules.set_public_access(:home_page)
      perm = @rules.permission_objects.find{|name, object| name == :home_page}
      perm[1].public_access?.should be_true
    end

    it "should raise and InvalidRuleAssignment if permission does not exist" do
      msg = "Permission not found: user_management"
      lambda{@rules.set_public_access(:user_management)}.should
        raise_error(Lockdown::InvalidRuleAssignment, msg)
    end
  end

  describe "#set_protected_access" do
    it "should define the permission as protected" do
      @rules.set_permission(:user_management)
      @rules.set_protected_access(:user_management)
      perm = @rules.permission_objects.find{|name, object| name == :user_management}
      perm[1].protected_access?.should be_true
    end

    it "should raise and InvalidRuleAssignment if permission does not exist" do
      msg = "Permission not found: user_management"
      lambda{@rules.set_protected_access(:user_management)}.should
        raise_error(Lockdown::InvalidRuleAssignment, msg)
    end
  end

  describe "#get_permissions" do
    it "should return array of permission names as symbols" do
      @rules.set_permission(:home_page)
      @rules.set_permission(:user_management)
      @rules.process_rules
      @rules.get_permissions.should include(:home_page) 
      @rules.get_permissions.should include(:user_management)
    end
  end

  describe "#permission_exists?" do
    it "should return true if permission exists" do
      @rules.set_permission(:home_page)
      @rules.process_rules
      @rules.permission_exists?(:home_page).should be_true
    end

    it "should return false if permission does not exist" do
      @rules.permission_exists?(:home_page).should be_false
    end
  end

  describe "#get_user_groups" do
    it "should return array of user group names as symbols" do
      @rules.set_permission(:user_management)
      @rules.set_user_group(:security_management, :user_management)
      @rules.get_user_groups.should == [:security_management]
    end
  end

  describe "#user_group_exists?" do
    it "should return true if user_group exists" do
      @rules.set_user_group(:user_management, :some_perm)
      @rules.user_group_exists?(:user_management).should be_true
    end

    it "should return false if user_group does not exist" do
      @rules.user_group_exists?(:user_management).should be_false
    end
  end


  describe "#make_user_administrator" do
  end

  describe "#process_rules" do
    it "should validate user_group permissions" do
      @rules.set_user_group(:test_group, :a_perm)
      error =  "User Group: test_group, permission not found: a_perm"

      lambda{@rules.process_rules}.
        should raise_error(Lockdown::InvalidRuleAssignment, error)
    end
  end
end
