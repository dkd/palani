require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ActsAsContentElement do
  
  before(:each) do
    @content_element = Factory.build(:content_element_text)
  end
  
  it "should request the header of its content element" do
    @content_element.content_element.should_receive(:header)
    @content_element.header
  end
  
  it "should return the header of its content element" do
    @content_element.header.should eql @content_element.content_element.header
  end
  
  it "should request the page of its content element" do
    @content_element.content_element.should_receive(:page)
    @content_element.page
  end
  
  it "should return the page of its content element" do
    @content_element.page.should eql @content_element.content_element.page
  end
  
  it "should request the element_type of its content element" do
    @content_element.content_element.should_receive(:element_type)
    @content_element.element_type
  end
  
  it "should return the element_type of its content element" do
    @content_element.element_type.should eql @content_element.content_element.element_type
  end
  
  it "should request hidden of its content element" do
    @content_element.content_element.should_receive(:hidden)
    @content_element.hidden
  end
  
  it "should return the hidden of its content element" do
    @content_element.hidden.should eql @content_element.content_element.hidden
  end
  
  it "should request the tag_list of its content element" do
    @content_element.content_element.should_receive(:tag_list)
    @content_element.tag_list
  end
  
  it "should return the tag_list of its content element" do
    @content_element.tag_list.should eql @content_element.content_element.tag_list
  end
  
  it "should request the template_id of its content element" do
    @content_element.content_element.should_receive(:template_id)
    @content_element.template_id
  end
  
  it "should return the template_id of its content element" do
    @content_element.template_id.should eql @content_element.content_element.template_id
  end
  
  it "should request the template_part_id of its content element" do
    @content_element.content_element.should_receive(:template_part_id)
    @content_element.template_part_id
  end
  
  it "should return the template_part_id of its content element" do
    @content_element.template_part_id.should eql @content_element.content_element.template_part_id
  end
  
  it "should update the header of its content element, when calling header=" do
    @content_element.header = "Testcontent"
    @content_element.content_element.header.should eql "Testcontent"
  end
  
  it "should update the page of its content element, when calling page=" do
    @page = Factory.build(:page)
    @content_element.page = @page
    @content_element.content_element.page.should eql @page
  end
  
  it "should update the element_type of its content element, when calling element_type=" do
    @content_element.element_type = "ContentElementImage"
    @content_element.content_element.element_type.should eql "ContentElementImage"
  end
  
  it "should update the hidden of its content element, when calling hidden=" do
    @content_element.hidden = false
    @content_element.content_element.hidden.should be_false
  end
  
  it "should update the tag_list of its content element, when calling tag_list=" do
    @content_element.tag_list = "tag,another_tag"
    @content_element.content_element.tag_list.should include("tag","another_tag")
  end
  
  it "should update the template_id of its content element, when calling template_id=" do
    @content_element.template_id = 1
    @content_element.content_element.template_id.should eql 1
  end
  
  it "should update the template_part_id of its content element, when calling template_part_id=" do
    @content_element.template_part_id = 1
    @content_element.content_element.template_part_id.should eql 1
  end
  
end