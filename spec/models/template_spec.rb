require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Template do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :code => "value for code",
      :type => "value for type",
      :deleted_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Template.create!(@valid_attributes)
  end
end
