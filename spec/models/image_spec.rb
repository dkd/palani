require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Image do
  before(:each) do
    @valid_attributes = {
      :filename => "value for filename",
      :content_type => "value for content_type",
      :size => "value for size",
      :width => "value for width",
      :height => "value for height",
      :thumbnail => "value for thumbnail"
    }
  end

  it "should create a new instance given valid attributes" do
    Image.create!(@valid_attributes)
  end
end
