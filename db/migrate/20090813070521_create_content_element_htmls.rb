class CreateContentElementHtmls < ActiveRecord::Migration
  def self.up
    create_table :content_element_htmls do |t|
      t.integer :content_element_id
      t.text :html
      t.timestamps
    end
  end

  def self.down
    drop_table :content_element_htmls
  end
end
