class RenameGroupIdToPermissionGroupIdForPermissions < ActiveRecord::Migration
  def self.up
    rename_column :permissions, :group_id, :permission_group_id
  end

  def self.down
    rename_column :permissions, :permission_group_id, :group_id
  end
end
