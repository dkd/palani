class ImageAttachment < ActiveRecord::Base
  belongs_to :image
  
  acts_as_paranoid
  
  liquid_methods :image, :width, :height, :position
  
end
