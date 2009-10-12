class AddDeletedToUserGroup < ActiveRecord::Migration
  def self.up
    add_column :user_groups, :deleted, :boolean, :default => false
  end

  def self.down
    remove_column :user_groups, :deleted
  end
end
