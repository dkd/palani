class ContentElement < ActiveRecord::Base
  
  belongs_to :page
  has_many :notices
  
  validates_associated :page
  validates_presence_of :page_id
  validates_presence_of :type
  
  acts_as_taggable_on :tags
  
  named_scope :not_deleted, :conditions => { :deleted => false }
  
  def delete
    self.update_attributes( :deleted => true )
  end
  
end