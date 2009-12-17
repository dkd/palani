# == Schema Information
#
# Table name: content_element_images
#
#  id                 :integer(4)      not null, primary key
#  content_element_id :integer(4)
#  created_at         :datetime
#  updated_at         :datetime
#

class ContentElementImage < ActiveRecord::Base

  include ActsAsContentElement

  belongs_to :content_element, :dependent => :destroy
  has_many :images, :through => :image_attachments
  has_many :image_attachments
  
  validates_associated :content_element
  
  accepts_nested_attributes_for :image_attachments
  
  liquid_methods :image_attachments, :header, :element_type, :hidden, :created_at, :updated_at, :tags, :page

  # returns the icon, that is used for the backend
  def icon
    "icons/content_elements/content_element_image.png"
  end
  
  # defines the path to the partial, that gets rendered in the body part of a content element in the backend
  # custom content elements should have a method 'administration_partial' returning the specific partial
  def administration_partial
    "admin/content_elements/types/content_element_image/administration"
  end
  
end
