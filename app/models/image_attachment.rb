class ImageAttachment < ActiveRecord::Base
  belongs_to :image
  
  acts_as_paranoid
  
end
