require File.dirname(__FILE__) + '/../../spec_helper'

describe Palani::BackendController do
  
  it "should set the backend language" do
    Palani::BackendController.filter_chain.find(:set_backend_language).should_not be_nil
  end

  it "should have set a backend language after calling the filter method" do
    login_admin
    controller.send :set_backend_language
    I18n.locale.should_not be_nil
  end
  
end