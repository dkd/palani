require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TemplatePart do
  before(:each) do
    @valid_attributes = {
      :template_id => 1,
      :key => "value for key",
      :title => "value for title"
    }
  end

  it "should create a new instance given valid attributes" do
    TemplatePart.create!(@valid_attributes)
  end
end
