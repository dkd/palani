require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PageTemplate do
  
  before(:each) do
    @page_template = Factory.build(:page_template, :id => 1, :code => "<html><head><title>{{title}}</title></head><body>{{description}}</body></html>")
  end
  
  describe "parse_parts" do
    
    it "should return an Array" do
      @page_template.parse_parts.should be_an Array
    end
    
    it "should return the given marker keys" do
      @page_template.parse_parts.should include("title","description")
    end
    
  end
  
end