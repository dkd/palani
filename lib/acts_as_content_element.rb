module ActsAsContentElement
  
  def header
    self.content_element.header
  end
  
  def page
    self.content_element.page
  end
  
  def element_type
    self.content_element.element_type
  end
  
  def hidden
    self.content_element.hidden
  end
  
  def tag_list
    self.content_element.tag_list
  end
  
  def template_id
    self.content_element.template_id
  end
  
  def header=(param)
    self.content_element.update_attributes :header => param
  end
  
  def page=(param)
    self.content_element.update_attributes :page => param
  end
  
  def element_type=(param)
    self.content_element.update_attributes :element_type => param
    self.content_element.create_element_type
  end
  
  def hidden=(param)
    self.content_element.update_attributes :hidden => param
  end
  
  def tag_list=(param)
    self.content_element.update_attributes :tag_list => param
  end
  
  def template_id=(param)
    self.content_element.update_attributes :template_id => param
  end
  
end