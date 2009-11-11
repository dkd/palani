class AddWidthAndHeightAndPositionToImageAttachments < ActiveRecord::Migration
  def self.up
    add_column :image_attachments, :width, :string
    add_column :image_attachments, :height, :string
    add_column :image_attachments, :position, :string
  end

  def self.down
    remove_column :image_attachments, :position
    remove_column :image_attachments, :height
    remove_column :image_attachments, :width
  end
end
