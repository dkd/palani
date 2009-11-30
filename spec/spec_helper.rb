# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.dirname(__FILE__) + "/../config/environment" unless defined?(RAILS_ROOT)
require 'spec/autorun'
require 'spec/rails'
require 'authlogic/test_case'
require 'lockdown/rspec_helper'
require File.expand_path(File.dirname(__FILE__) + "/spec_helpers/authentication_spec_helper")
require File.expand_path(File.dirname(__FILE__) + "/spec_helpers/controller_spec_helper")

Spec::Runner.configure do |config|
  config.include(ControllerSpecHelper, :type => :controller)
  config.include(Lockdown::RspecHelper)

  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
end