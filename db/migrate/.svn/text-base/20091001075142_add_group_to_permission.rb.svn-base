class AddGroupToPermission < ActiveRecord::Migration
  def self.up
    add_column :permissions, :group_id, :integer
  end

  def self.down
    remove_column :permissions, :group_id
  end
end
