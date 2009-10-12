class CreateContentElements < ActiveRecord::Migration
  def self.up
    create_table :content_elements do |t|
      t.integer :page_id
      t.integer :parent_id, :default => 0
      t.string :type, :default => "ContentElement"
      t.string :header
      t.string :header_type
      t.datetime :starttime
      t.datetime :endtime
      t.integer :sort, :default => 0
      t.boolean :deleted, :default => false
      t.boolean :hidden, :default => true
      t.integer :column

      t.timestamps
    end
  end

  def self.down
    drop_table :content_elements
  end
end
