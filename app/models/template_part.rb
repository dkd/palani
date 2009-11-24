class TemplatePart < ActiveRecord::Base
  
  belongs_to :template
  
  has_many :content_elements
  
end