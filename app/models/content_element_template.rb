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

class ContentElementTemplate < Template
  validates_presence_of :content_element_type
  
  named_scope :grid_data, :select => 'id,title,code,content_element_type'
  named_scope :of_type, lambda { |*args| { :conditions => ["content_element_type = ?", (args.first)] } }
  
end
