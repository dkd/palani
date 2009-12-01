require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::AdministrationHelper do
  
  before(:each) do
    helper.stub!(:render)
  end
  
  it "should render the partial" do
    helper.should_receive(:render)
    helper.render_administration_sub_menu("edit_profile")
  end

end
