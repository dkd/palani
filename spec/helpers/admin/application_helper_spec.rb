require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')
include ApplicationHelper

describe ApplicationHelper do
  
  describe "current_time" do
    it "returns the current time as %R - %d.%m.%Y" do
      current_time.should eql( Time.now.strftime("%R - %d.%m.%Y") )
    end
  end
  
  describe "Rendering of ExtJS Grids" do
  
    it "throws an exception, if there is no given url"
    it "throws an exception, if there are no fields"
    it "renders the grid/list partial, if everything is okay"
    
  end
  
end