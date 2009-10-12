class CreatePermissionGroups < ActiveRecord::Migration
  def self.up
    create_table :permission_groups do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :permission_groups
  end
end
