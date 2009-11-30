require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContentElementTemplate do
  
  before(:each) do
    @content_element = Factory.build(:content_element_template)
  end
  
  it "should not be valid without a content element type" do
    @content_element.content_element_type = nil
    @content_element.should_not be_valid
  end
  
end