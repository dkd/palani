class AddImageIdToImageAttachments < ActiveRecord::Migration
  def self.up
    add_column :image_attachments, :image_id, :integer
  end

  def self.down
    remove_column :image_attachments, :image_id
  end
end
