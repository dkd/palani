class PageTemplate < Template
  
  before_save :parse_parts
  
  named_scope :grid_data, :select => 'id,title,code'
  
  # parses the given template code to offer several markers, that can be used for cols
  def parse_parts(code = nil)
    code ||= self.code
    # parse the given code
    t = Liquid::Template.parse(code)
    keys = []
    # add the several markers to keys = []
    t.root.nodelist.each { |part| keys << part.name if part.is_a? Liquid::Variable }
    # remove allocated tags
    keys.delete_if { |e|  ALLOCATED_TAGS.include?(e) }
    # remove duplicates
    keys.uniq
    # create new markers
    keys.each { |key| self.template_parts.find_or_create_by_key(key)  }
  end

end