# == Schema Information
#
# Table name: content_element_images
#
#  id                 :integer(4)      not null, primary key
#  content_element_id :integer(4)
#  created_at         :datetime
#  updated_at         :datetime
#
#
class ContentElementImage < ActiveRecord::Base

  # Content element config
  acts_as_content_element :icon => "icons/content_elements/content_element_image.png",
                          :administration_partial => "admin/content_elements/types/content_element_image/administration"
  
  # Liquid config                          
  liquid_methods :image_attachments, :header, :element_type, :hidden, :created_at, :updated_at, :tags, :page                          

  has_many :images, :through => :image_attachments
  has_many :image_attachments

  accepts_nested_attributes_for :image_attachments
    
end
