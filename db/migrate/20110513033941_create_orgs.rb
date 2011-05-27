class CreateOrgs < ActiveRecord::Migration
  def self.up
    create_table :orgs do |t|
      t.string :hms_poid
      t.string :orgname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :orgs
  end
end
