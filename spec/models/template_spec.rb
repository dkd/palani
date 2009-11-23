require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Template do
  
  before(:all) do
    @page_template = Factory.build(:page_template, :id => 1, 
                                   :code => "<html><head><title>{{title}}</title></head><body>{{description}}</body></html>")
  end
  
  describe "actions" do
    
    it "should return anything" do
      @page_template.actions.should_not be_nil
    end
    
    it "should return the edit icon" do
      @page_template.actions.should match(/[icons\/edit.png]/)
    end
    
    it "should return the delete icon" do
      @page_template.actions.should match(/[icons\/delete.png]/)
    end
    
  end
  
  describe "clean_code" do
    
    it "should not be longer than 60 chars" do
      @page_template.clean_code.length.should <= 60
    end
    
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
