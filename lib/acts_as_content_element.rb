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
  
end