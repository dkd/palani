require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe Palani::Frontend::PagesHelper do
  
  describe "render_content_element" do
    
    before(:each) do
      @content_element = Factory.build(:content_element)
    end
    
    context "with a template" do
      
      before(:each) do
        @content_element.template = Factory.build(:content_element_template)
      end
      
      it "should not return an empty string" do
        helper.render_content_element(@content_element).should_not be_empty
      end
      
      it "should render the content element requested" do
        ContentElement.should_receive(:find_by_content_element_id)
        helper.render_content_element(@content_element)
      end
      
    end
    
    context "without a template" do
    
      it "should return an empty string" do
        helper.render_content_element(@content_element).should be_empty
      end
      
    end
    
  end
  
  describe "render_template_part" do
    
    before(:each) do
      @page = Factory(:page)
      @page.template = Factory(:template)
      @template_part = Factory(:template_part, :template_id => @page.template.id)
      @page.content_elements << Factory(:content_element, :template_part_id => @template_part.id)
      @page.content_elements << Factory(:content_element, :template_part_id => @template_part.id)
      @page.content_elements.stub!(:find_all_by_template_part_id).and_return(@page.content_elements)
      @page.save
    end
    
    it "should render the content elements of the page requested" do
      @page.content_elements.should_receive(:find_all_by_template_part_id)
      helper.render_template_part(@template_part, @page)
    end
    
  end
  
  describe "render_template" do
    
    before(:each) do
      @page = Factory(:page)
      @page.template = Factory(:page_template)
      @template = Liquid::Template.parse(@page.template.code)
    end
    
    it "should return a rendered template" do
      helper.render_template(@template, @page).should_not be_empty
    end
    
  end

end