class ContentElementTemplate < Template
  validates_presence_of :content_element_type
  
  named_scope :grid_data, :select => 'id,title,code,content_element_type'
end