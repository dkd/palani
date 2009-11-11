class AddContentElementImageIdToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :content_element_image_id, :integer
  end

  def self.down
    remove_column :images, :content_element_image_id
  end
end
