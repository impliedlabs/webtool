class CreateTerritories < ActiveRecord::Migration
  def self.up
    create_table :territories do |t|
      t.integer :zipcode
      t.integer :terr_code

      t.timestamps
    end
  end

  def self.down
    drop_table :territories
  end
end
