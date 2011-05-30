class IndexOrgBuckets < ActiveRecord::Migration
  def self.up
  	add_index :orgs, :org_bucket_1_rank
  	add_index :orgs, :org_bucket_2_rank
  	add_index :orgs, :org_bucket_3_rank
  	add_index :orgs, :org_bucket_4_rank
  end

  def self.down
  end
end
