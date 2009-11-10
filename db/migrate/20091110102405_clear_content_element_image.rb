class ClearContentElementImage < ActiveRecord::Migration
  def self.up
    remove_column :content_element_images, :image_url
    remove_column :content_element_images, :image_position
    remove_column :content_element_images, :image_information
    remove_column :content_element_images, :image_alternative_text
  end

  def self.down
    add_column :content_element_images, :image_url, :string
    add_column :content_element_images, :image_position, :string
    add_column :content_element_images, :image_information, :string
    add_column :content_element_images, :image_alternative_text, :string
  end
end
