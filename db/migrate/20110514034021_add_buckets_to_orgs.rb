class AddBucketsToOrgs < ActiveRecord::Migration
  def self.up
    add_column :orgs, :org_bucket_1_rank, :integer
	add_column :orgs, :org_bucket_2_rank, :integer
	add_column :orgs, :org_bucket_3_rank, :integer
	add_column :orgs, :org_bucket_4_rank, :integer
  end

  def self.down
    remove_column :orgs, :org_bucket_1_rank
  end
end
