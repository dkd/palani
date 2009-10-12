class CreateNotices < ActiveRecord::Migration
  def self.up
    create_table :notices do |t|
      t.integer :user_id
      t.string :title
      t.text :text
      t.string :element_type
      t.integer :element_id
      t.boolean :deleted, :default => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :notices
  end
end
