require File.dirname(__FILE__) + '/../spec_helper'
 
# http://blog.davidchelimsky.net/articles/2007/06/03/oxymoron-testing-behaviour-of-abstractions
describe ApplicationController do
  
  it "should set the backend language" do
    ApplicationController.filter_chain.find(:set_backend_language).should_not be_nil
  end
  
  it "should require an user" do
    ApplicationController.filter_chain.find(:require_user).should_not be_nil
  end
  
  it "should have set a backend language after calling the filter method" do
    login_admin
    controller.send :set_backend_language
    I18n.locale.should_not be_nil
  end
  
end