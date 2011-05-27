class AddBucketsToIndivs < ActiveRecord::Migration
  def self.up
    add_column :indivs, :bucket_1_rank, :integer
	add_column :indivs, :bucket_2_rank, :integer
	add_column :indivs, :bucket_3_rank, :integer
	add_column :indivs, :bucket_4_rank, :integer
  end

  def self.down
    remove_column :indivs, :bucket_1_rank
  end
end
