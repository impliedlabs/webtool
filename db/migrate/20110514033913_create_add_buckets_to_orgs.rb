class CreateAddBucketsToOrgs < ActiveRecord::Migration
  def self.up
    create_table :add_buckets_to_orgs do |t|
      t.integer :org_bucket_1_rank

      t.timestamps
    end
  end

  def self.down
    drop_table :add_buckets_to_orgs
  end
end
