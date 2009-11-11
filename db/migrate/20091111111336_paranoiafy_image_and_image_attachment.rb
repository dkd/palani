class ParanoiafyImageAndImageAttachment < ActiveRecord::Migration
  def self.up
    add_column :images, :deleted_at, :datetime
    add_column :image_attachments, :deleted_at, :datetime
  end

  def self.down
    remove_column :images, :deleted_at
    remove_column :image_attachments, :deleted_at
  end
end
