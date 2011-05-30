class AddIndexesToOrgs < ActiveRecord::Migration
  def self.up
  	add_index :orgs, :zipcode
  	add_index :orgs, :orgname
  	add_index :orgs, :city
  end

  def self.down
  end
end
