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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160917195959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estimates", force: :cascade do |t|
    t.integer  "project_feature_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "price_feature_id"
    t.index ["price_feature_id"], name: "index_estimates_on_price_feature_id", using: :btree
    t.index ["project_feature_id"], name: "index_estimates_on_project_feature_id", using: :btree
  end

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "feature_type"
  end

  create_table "loan_quotes", force: :cascade do |t|
    t.integer  "property_type"
    t.integer  "purchase"
    t.integer  "owner_occupied"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "purchase_price"
    t.integer  "down_payment"
    t.integer  "rehab_budget"
    t.integer  "arv"
    t.integer  "past_rehabs"
    t.integer  "fico"
    t.string   "referral"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "price_features", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "feature_id"
    t.integer  "estimate_id"
    t.integer  "floor"
    t.integer  "ceiling"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["estimate_id"], name: "index_price_features_on_estimate_id", using: :btree
    t.index ["feature_id"], name: "index_price_features_on_feature_id", using: :btree
    t.index ["user_id"], name: "index_price_features_on_user_id", using: :btree
  end

  create_table "project_features", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_project_features_on_feature_id", using: :btree
    t.index ["project_id"], name: "index_project_features_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "square_feet"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "rooms"
    t.integer  "bathrooms"
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "zip_code"
    t.integer  "role",                   default: 3
    t.string   "phone"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "estimates", "price_features"
  add_foreign_key "estimates", "project_features"
  add_foreign_key "price_features", "estimates"
  add_foreign_key "price_features", "features"
  add_foreign_key "price_features", "users"
  add_foreign_key "project_features", "features"
  add_foreign_key "project_features", "projects"
  add_foreign_key "projects", "users"
end
