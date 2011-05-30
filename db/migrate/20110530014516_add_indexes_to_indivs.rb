class AddIndexesToIndivs < ActiveRecord::Migration
  def self.up
  		add_index :indivs, :first
  		add_index :indivs, :last
  		add_index :indivs, :city
  		add_index :indivs, :zip
  end

  def self.down
  end
end
