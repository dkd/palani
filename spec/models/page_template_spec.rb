require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PageTemplate do
  
  before(:each) do
    @page_template = Factory(:page_template, :id => 1, :code => "<html><head><title>{{title}}</title></head><body>{{description}}</body></html>")
  end
  
  describe "parse_parts" do
    
    it "should return an Array" do
      @page_template.parse_parts.should be_an Array
    end
    
    it "should return the given marker keys" do
      @page_template.parse_parts.should include("title","description")
    end
    
    it "should destroy keys, that are not any longer present" do
      @page_template.parse_parts
      @page_template.update_attributes :code => "<html><head></head><body>{{description}}</body></html>"
      @page_template.parse_parts.should_not include("title")
    end
    
  end
  
end