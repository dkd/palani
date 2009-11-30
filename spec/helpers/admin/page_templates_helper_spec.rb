require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::PageTemplatesHelper do
  
  describe "is_current_template_part" do
    
    before(:each) do
      @template_part = Factory.build(:template_part, :id => 1)
    end
    
    it "should return a boolean value" do
      helper.is_current_template_part(1, 1).should be_an TrueClass
    end
    
    context "template part equals first template part" do
      
      it "should return true" do
        helper.is_current_template_part(1, 1).should be_true
      end
      
    end
    
    context "template part equals not first template part" do
      
      it "should return false" do
        helper.is_current_template_part(1, 2).should be_false
      end
      
    end
    
    context "template part equals the requested template part" do
      
      it "should return true" do
        helper.is_current_template_part(@template_part, 2, 1).should be_true
      end
      
    end
    
    context "template part equals not the requested template part" do
      
      it "should return false" do
        helper.is_current_template_part(@template_part, 2, 3).should be_false
      end
      
    end
    
  end

end
