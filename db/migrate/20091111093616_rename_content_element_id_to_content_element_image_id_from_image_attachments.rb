class RenameContentElementIdToContentElementImageIdFromImageAttachments < ActiveRecord::Migration
  def self.up
    rename_column :image_attachments, :content_element_id, :content_element_image_id
  end

  def self.down
    rename_column :image_attachments, :content_element_image_id, :content_element_id
  end
end
