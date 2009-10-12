class CreateContentElementTexts < ActiveRecord::Migration
  def self.up
    create_table :content_element_texts do |t|
      t.integer :content_element_id
      t.text :text
      t.timestamps
    end
  end

  def self.down
    drop_table :content_element_texts
  end
end
