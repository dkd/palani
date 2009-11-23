class AddColumnIdToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :column_id, :integer
  end

  def self.down
    remove_column :pages, :column_id
  end
end
