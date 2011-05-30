class AddIndexesToPxdxes < ActiveRecord::Migration
  def self.up
  	add_index :pxdxes, :org_id
  	add_index :pxdxes, :indiv_id
  end

  def self.down
  end
end
