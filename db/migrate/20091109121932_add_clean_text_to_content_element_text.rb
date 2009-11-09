class AddCleanTextToContentElementText < ActiveRecord::Migration
  def self.up
    add_column :content_element_texts, :clean_text, :text
  end

  def self.down
    remove_column :content_element_texts, :clean_text
  end
end
