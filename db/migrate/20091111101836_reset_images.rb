class ResetImages < ActiveRecord::Migration
  def self.up
    remove_column :images, :filename
    remove_column :images, :width
    remove_column :images, :height
    remove_column :images, :thumbnail
  end

  def self.down
    add_column :images, :filename, :string
    add_column :images, :width, :string
    add_column :images, :height, :string
    add_column :images, :thumbnail, :string
  end
end
