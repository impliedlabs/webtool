class CreateAddClientIdToUsers < ActiveRecord::Migration
  def self.up
    create_table :add_client_id_to_users do |t|
      t.string :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :add_client_id_to_users
  end
end
