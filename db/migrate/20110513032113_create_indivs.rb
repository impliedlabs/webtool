class CreateIndivs < ActiveRecord::Migration
  def self.up
    create_table :indivs do |t|
      t.string :hms_piid
      t.string :first
      t.string :last
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :specialty
      t.string :pract_type

      t.timestamps
    end
  end

  def self.down
    drop_table :indivs
  end
end
