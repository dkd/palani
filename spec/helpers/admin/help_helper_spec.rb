require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::HelpHelper do
  
  before(:each) do
    helper.stub!(:render)
  end
  
  it "should render the partial" do
    helper.should_receive(:render)
    helper.render_help_sub_menu("index")
  end

end
