class CreateContentElementImages < ActiveRecord::Migration
  def self.up
    create_table :content_element_images do |t|
      t.integer :content_element_id
      t.string :image_url
      t.string :image_position
      t.string :image_information
      t.string :image_alternative_text
      t.timestamps
    end
  end

  def self.down
    drop_table :content_element_images
  end
end
