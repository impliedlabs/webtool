class CreatePxdxes < ActiveRecord::Migration
  def self.up
    create_table :pxdxes do |t|
      t.integer :indiv_id
      t.integer :org_id
      t.integer :bucket_1_phys_fac_rank
      t.integer :bucket_2_phys_fac_rank
      t.integer :bucket_3_phys_fac_rank
      t.integer :bucket_4_phys_fac_rank
      t.integer :bucket_1_workload
      t.integer :bucket_2_workload
      t.integer :bucket_3_workload
      t.integer :bucket_4_workload

      t.timestamps
    end
  end

  def self.down
    drop_table :pxdxes
  end
end
