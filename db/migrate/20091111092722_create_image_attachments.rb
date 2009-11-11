class CreateImageAttachments < ActiveRecord::Migration
  def self.up
    create_table :image_attachments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :image_attachments
  end
end
