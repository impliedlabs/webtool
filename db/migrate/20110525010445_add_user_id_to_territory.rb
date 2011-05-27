class AddUserIdToTerritory < ActiveRecord::Migration
  def self.up
    add_column :territories, :user_id, :integer
  end

  def self.down
    remove_column :territories, :user_id
  end
end
