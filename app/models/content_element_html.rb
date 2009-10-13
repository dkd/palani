class ContentElementHtml < ActiveRecord::Base
  belongs_to :content_element
  
  validates_associated :content_element
  validates_presence_of :html
  
end
