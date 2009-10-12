class ContentElementText < ActiveRecord::Base
  belongs_to :content_element
  
  validates_associated :content_element
  
  named_scope :not_deleted, :conditions => { :deleted => false }
  
  def delete
    self.update_attributes( :deleted => true )
  end
  
end
