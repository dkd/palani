class ContentElementText < ActiveRecord::Base
  belongs_to :content_element
  
  validates_associated :content_element
  
end
