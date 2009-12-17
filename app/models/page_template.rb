# == Schema Information
#
# Table name: templates
#
#  id                   :integer(4)      not null, primary key
#  title                :string(255)
#  code                 :text
#  type                 :string(255)
#  deleted_at           :datetime
#  created_at           :datetime
#  updated_at           :datetime
#  content_element_type :string(255)
#
#
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
    # remove not existing parts
    current_keys = TemplatePart.find_all_by_template_id(self.id).collect { |t| t.key  }
    not_existing_parts = current_keys - keys
    not_existing_parts.each { |part| TemplatePart.find_by_template_id_and_key(self.id, part).destroy }
    # create new markers
    keys.each { |key| self.template_parts.find_or_create_by_key(key)  }
  end

end
