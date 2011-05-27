class AddLatLonToOrg < ActiveRecord::Migration
  def self.up
    add_column :orgs, :latitude, :float
    add_column :orgs, :longitude, :float
    add_column :orgs, :gmaps, :boolean
  end

  def self.down
    remove_column :orgs, :gmaps
    remove_column :orgs, :longitude
    remove_column :orgs, :latitude
  end
end
