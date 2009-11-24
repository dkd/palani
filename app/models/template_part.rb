class TemplatePart < ActiveRecord::Base
  
  belongs_to :template
  
  has_many :content_elements
  
  named_scope :backend_columns, :conditions => { :is_column => true }
  
end