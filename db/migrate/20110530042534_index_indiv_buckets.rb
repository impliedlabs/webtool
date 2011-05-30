class IndexIndivBuckets < ActiveRecord::Migration
  def self.up
  		add_index :indivs, :bucket_1_rank
  		add_index :indivs, :bucket_2_rank
  		add_index :indivs, :bucket_3_rank
  		add_index :indivs, :bucket_4_rank
  end

  def self.down
  end
end
