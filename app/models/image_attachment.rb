# == Schema Information
#
# Table name: image_attachments
#
#  id                       :integer(4)      not null, primary key
#  created_at               :datetime
#  updated_at               :datetime
#  content_element_image_id :integer(4)
#  image_id                 :integer(4)
#  width                    :string(255)
#  height                   :string(255)
#  position                 :string(255)
#  deleted_at               :datetime
#
#
class ImageAttachment < ActiveRecord::Base
  belongs_to :image
  
  acts_as_paranoid
  
  liquid_methods :image, :width, :height, :position
  
end
