class ContentElementText < ActiveRecord::Base
  belongs_to :content_element
  
  validates_presence_of :text
  validates_associated :content_element
  
end
