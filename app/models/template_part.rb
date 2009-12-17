# == Schema Information
#
# Table name: template_parts
#
#  id          :integer(4)      not null, primary key
#  template_id :integer(4)
#  key         :string(255)
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  is_column   :boolean(1)      default(FALSE)
#
#
class TemplatePart < ActiveRecord::Base
  
  belongs_to :template
  
  has_many :content_elements
  
  named_scope :backend_columns, :conditions => { :is_column => true }
  
end
