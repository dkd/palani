require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Palani::FrontendHelper do
  
  describe "current_time" do
    
    it "should return something not empty" do
      helper.current_time.should_not be_empty
    end
    
    it "should return the current time as %R - %d.%m.%Y" do
      helper.current_time.should eql( Time.now.strftime("%R - %d.%m.%Y") )
    end
    
  end
  
end