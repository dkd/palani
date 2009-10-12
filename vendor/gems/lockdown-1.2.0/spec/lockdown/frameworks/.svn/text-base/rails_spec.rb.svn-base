require File.join(File.dirname(__FILE__), %w[.. .. spec_helper])

describe Lockdown::Frameworks::Rails do
  before do
    @rails = Lockdown::Frameworks::Rails
    @rails.stub!(:use_me?).and_return(true)

    @lockdown = mock("lockdown")
  end


  describe "#included" do
    it "should extend lockdown with rails environment" do
      @lockdown.should_receive(:extend).
        with(Lockdown::Frameworks::Rails::Environment)

      @rails.should_receive(:mixin)

      @rails.included(@lockdown)
    end
  end

  describe "#mixin" do
    it "should perform class_eval on controller view and system to inject itself" do
      module ActionController; class Base; end end
      module ActionView; class Base; end end

      Lockdown.stub!(:controller_parent).and_return(ActionController::Base)
      Lockdown.stub!(:view_helper).and_return(ActionView::Base)

      ActionView::Base.should_receive(:class_eval)

      ActionController::Base.should_receive(:helper_method)
      ActionController::Base.should_receive(:before_filter)
      ActionController::Base.should_receive(:filter_parameter_logging)
      ActionController::Base.should_receive(:rescue_from)

      ActionController::Base.should_receive(:class_eval)

      Lockdown::System.should_receive(:class_eval)


      @rails.mixin
    end

  end
end

describe Lockdown::Frameworks::Rails::Environment do

  RAILS_ROOT = "/shibby/dibby/do"
  before do
    @env = class Test; extend Lockdown::Frameworks::Rails::Environment; end
  end

  describe "#project_root" do
    it "should return rails root" do
      @env.project_root.should == "/shibby/dibby/do"
    end
  end

  describe "#init_file" do
    it "should return path to init_file" do
      @env.stub!(:project_root).and_return("/shibby/dibby/do")
      @env.init_file.should == "/shibby/dibby/do/lib/lockdown/init.rb"
    end
  end

  describe "#controller_class_name" do
    it "should add Controller to name" do
      @env.controller_class_name("user").should == "UserController"
    end

    it "should convert two underscores to a namespaced controller" do
      @env.controller_class_name("admin__user").should == "Admin::UserController"
    end
  end

  describe "#controller_parent" do
    it "should return ActionController::Base" do
      module ActionController; class Base; end end

      @env.controller_parent.should == ActionController::Base
    end
  end

  describe "#view_helper" do
    it "should return ActionView::Base" do
      module ActionView; class Base; end end
      
      @env.view_helper.should == ActionView::Base
    end
  end
end

describe Lockdown::Frameworks::Rails::System do
  class Test 
    extend Lockdown::Frameworks::Rails::System
    class << self
      attr_accessor :controller_classes
    end
  end

  module Rails
    module VERSION
      MAJOR = 2
      MINOR = 2
      TINY  = 2
    end    
  end

  before do
    @env = Test
    @env.controller_classes = {}
  end

  describe "#skip_sync?" do
  end

  describe "#load_controller_classes" do
  end

  describe "#maybe_load_framework_controller_parent" do
    it "should call require_or_load with application.rb < 2.3" do
      @env.should_receive(:require_or_load).with("application.rb")

      @env.maybe_load_framework_controller_parent
    end

    it "should call require_or_load with application_controller.rb >= 2.3" do
      module Rails
        module VERSION 
          MINOR = 3
          TINY  = 0
        end    
      end

      @env.should_receive(:require_or_load).with("application_controller.rb")

      @env.maybe_load_framework_controller_parent
    end
  end

  describe "#lockdown_load" do
    it "should add class to controller classes" do
      @env.stub!(:class_name_from_file).and_return("controller_class")
      Lockdown.stub!(:qualified_const_get).and_return(:controller_class)
      @env.stub!(:require_or_load)

      @env.lockdown_load("controller_file")

      @env.controller_classes["ControllerFile"].should == :controller_class
    end
  end

  describe "#require_or_load" do
    it "should use Dependencies if not defined in ActiveSupport" do
      module ActiveSupport; end
      Dependencies = mock("dependencies") unless defined?(Dependencies)

      Dependencies.should_receive(:require_or_load).with("controller_file")

      @env.require_or_load("controller_file")
    end

    it "should use ActiveSupport::Dependencies if defined" do
      module ActiveSupport; class Dependencies; end end

      ActiveSupport::Dependencies.should_receive(:require_or_load).
        with("controller_file")

      @env.require_or_load("controller_file")
    end
  end
end
