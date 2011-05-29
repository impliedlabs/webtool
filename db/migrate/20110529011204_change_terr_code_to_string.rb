class ChangeTerrCodeToString < ActiveRecord::Migration
  def self.up
  	change_column :territories, :terr_code, :string
  end

  def self.down
  end
end
