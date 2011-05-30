# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110530042534) do

  create_table "add_buckets_to_orgs", :force => true do |t|
    t.integer  "org_bucket_1_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "add_client_id_to_users", :force => true do |t|
    t.string   "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indivs", :force => true do |t|
    t.string   "hms_piid"
    t.string   "first"
    t.string   "last"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "specialty"
    t.string   "pract_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bucket_1_rank"
    t.integer  "bucket_2_rank"
    t.integer  "bucket_3_rank"
    t.integer  "bucket_4_rank"
  end

  add_index "indivs", ["bucket_1_rank"], :name => "index_indivs_on_bucket_1_rank"
  add_index "indivs", ["bucket_2_rank"], :name => "index_indivs_on_bucket_2_rank"
  add_index "indivs", ["bucket_3_rank"], :name => "index_indivs_on_bucket_3_rank"
  add_index "indivs", ["bucket_4_rank"], :name => "index_indivs_on_bucket_4_rank"
  add_index "indivs", ["city"], :name => "index_indivs_on_city"
  add_index "indivs", ["first"], :name => "index_indivs_on_first"
  add_index "indivs", ["last"], :name => "index_indivs_on_last"
  add_index "indivs", ["zip"], :name => "index_indivs_on_zip"

  create_table "installs", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "installs", ["email"], :name => "index_installs_on_email", :unique => true
  add_index "installs", ["reset_password_token"], :name => "index_installs_on_reset_password_token", :unique => true

  create_table "orgs", :force => true do |t|
    t.string   "hms_poid"
    t.string   "orgname"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "org_bucket_1_rank"
    t.integer  "org_bucket_2_rank"
    t.integer  "org_bucket_3_rank"
    t.integer  "org_bucket_4_rank"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  add_index "orgs", ["city"], :name => "index_orgs_on_city"
  add_index "orgs", ["org_bucket_1_rank"], :name => "index_orgs_on_org_bucket_1_rank"
  add_index "orgs", ["org_bucket_2_rank"], :name => "index_orgs_on_org_bucket_2_rank"
  add_index "orgs", ["org_bucket_3_rank"], :name => "index_orgs_on_org_bucket_3_rank"
  add_index "orgs", ["org_bucket_4_rank"], :name => "index_orgs_on_org_bucket_4_rank"
  add_index "orgs", ["orgname"], :name => "index_orgs_on_orgname"
  add_index "orgs", ["zipcode"], :name => "index_orgs_on_zipcode"

  create_table "pxdxes", :force => true do |t|
    t.integer  "indiv_id"
    t.integer  "org_id"
    t.integer  "bucket_1_phys_fac_rank"
    t.integer  "bucket_2_phys_fac_rank"
    t.integer  "bucket_3_phys_fac_rank"
    t.integer  "bucket_4_phys_fac_rank"
    t.integer  "bucket_1_workload"
    t.integer  "bucket_2_workload"
    t.integer  "bucket_3_workload"
    t.integer  "bucket_4_workload"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pxdxes", ["indiv_id"], :name => "index_pxdxes_on_indiv_id"
  add_index "pxdxes", ["org_id"], :name => "index_pxdxes_on_org_id"

  create_table "territories", :force => true do |t|
    t.integer  "zipcode"
    t.string   "terr_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
