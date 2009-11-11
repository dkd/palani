class AddContentElementImageIdToImageAttachments < ActiveRecord::Migration
  def self.up
    add_column :image_attachments, :content_element_id, :integer
  end

  def self.down
    remove_column :image_attachments, :content_element_id
  end
end
