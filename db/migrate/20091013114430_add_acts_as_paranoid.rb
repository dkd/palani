class AddActsAsParanoid < ActiveRecord::Migration
  def self.up
    # remove old delete handling
    remove_column :content_element_htmls, :deleted
    remove_column :content_element_texts, :deleted
    remove_column :content_element_images, :deleted
    remove_column :content_elements, :deleted
    remove_column :notices, :deleted
    remove_column :pages, :deleted
    remove_column :user_groups, :deleted
    remove_column :users, :deleted
    
    # add neccessary cols for acts_as_paranoid
    add_column :content_elements, :deleted_at, :datetime
    add_column :pages, :deleted_at, :datetime
    add_column :notices, :deleted_at, :datetime
    add_column :users, :deleted_at, :datetime
  end

  def self.down
    # add old delete handling
    add_column :content_element_htmls, :deleted, :boolean, :default => false
    add_column :content_element_texts, :deleted, :boolean, :default => false
    add_column :content_element_images, :deleted, :boolean, :default => false
    add_column :content_elements, :deleted, :boolean, :default => false
    add_column :notices, :deleted, :boolean, :default => false
    add_column :pages, :deleted, :boolean, :default => false
    add_column :user_groups, :deleted, :boolean, :default => false
    add_column :users, :deleted, :boolean, :default => false
    
    # remove neccessary cols for acts_as_paranoid
    remove_column :content_elements, :deleted_at
    remove_column :pages, :deleted_at
    remove_column :notices, :deleted_at
    remove_column :users, :deleted_at
  end
end
