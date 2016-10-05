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

ActiveRecord::Schema.define(version: 20161004232942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.datetime "time"
    t.string   "time_zone"
    t.integer  "bid_id"
    t.integer  "contractor_bid_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["bid_id"], name: "index_appointments_on_bid_id", using: :btree
    t.index ["contractor_bid_id"], name: "index_appointments_on_contractor_bid_id", using: :btree
  end

  create_table "bid_projects", force: :cascade do |t|
    t.integer  "contractor_bid_id"
    t.integer  "bid_id"
    t.integer  "total"
    t.integer  "draws"
    t.integer  "days"
    t.text     "breakdown"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "accepted"
    t.index ["bid_id"], name: "index_bid_projects_on_bid_id", using: :btree
    t.index ["contractor_bid_id"], name: "index_bid_projects_on_contractor_bid_id", using: :btree
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.date     "date1"
    t.time     "start_time1"
    t.date     "date2"
    t.time     "start_time2"
    t.date     "date3"
    t.time     "start_time3"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "instructions"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["project_id"], name: "index_bids_on_project_id", using: :btree
    t.index ["user_id"], name: "index_bids_on_user_id", using: :btree
  end

  create_table "contractor_bids", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "total"
    t.integer  "draws"
    t.integer  "days"
    t.text     "breakdown"
    t.boolean  "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contractor_bids_on_user_id", using: :btree
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "estimates", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "price_feature_id"
    t.integer  "project_id"
    t.integer  "avg_ceiling"
    t.integer  "avg_floor"
    t.integer  "feature_id"
    t.integer  "project_feature_id"
    t.index ["feature_id"], name: "index_estimates_on_feature_id", using: :btree
    t.index ["price_feature_id"], name: "index_estimates_on_price_feature_id", using: :btree
    t.index ["project_feature_id"], name: "index_estimates_on_project_feature_id", using: :btree
    t.index ["project_id"], name: "index_estimates_on_project_id", using: :btree
  end

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "feature_type"
  end

  create_table "lender_loans", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.boolean  "approved"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "loan_application_id"
    t.index ["user_id"], name: "index_lender_loans_on_user_id", using: :btree
  end

  create_table "lender_quotes", force: :cascade do |t|
    t.decimal  "interest_rate"
    t.integer  "loan_purchase"
    t.integer  "loan_rehab"
    t.decimal  "origination_fee"
    t.integer  "term"
    t.integer  "pre_payment"
    t.integer  "draws"
    t.integer  "min_draw"
    t.decimal  "min_final_draw"
    t.integer  "loan_quote_id"
    t.integer  "lender_underwriting_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["lender_underwriting_id"], name: "index_lender_quotes_on_lender_underwriting_id", using: :btree
    t.index ["loan_quote_id"], name: "index_lender_quotes_on_loan_quote_id", using: :btree
  end

  create_table "lender_underwritings", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "ltv"
    t.decimal  "arv"
    t.integer  "experience"
    t.integer  "fico"
    t.decimal  "interest_rate"
    t.integer  "loan_min"
    t.integer  "loan_max"
    t.decimal  "origination_fee"
    t.integer  "term"
    t.integer  "process_time"
    t.integer  "pre_payment"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.decimal  "ltc"
    t.integer  "draws"
    t.integer  "min_draw"
    t.decimal  "min_final_draw"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.index ["user_id"], name: "index_lender_underwritings_on_user_id", using: :btree
  end

  create_table "loan_applications", force: :cascade do |t|
    t.boolean  "occupied"
    t.boolean  "loan_purpose"
    t.string   "entity_name"
    t.integer  "entity_type"
    t.string   "state"
    t.integer  "ein"
    t.string   "legal_address"
    t.string   "legal_city"
    t.string   "legal_state"
    t.string   "legal_zip_code"
    t.string   "mailing_address"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.string   "mailing_zip_code"
    t.string   "owner_name"
    t.string   "owner_title"
    t.string   "owner_email"
    t.integer  "owner_ss"
    t.string   "owner_phone"
    t.date     "owner_dob"
    t.string   "guarantor_name"
    t.string   "guarantor_email"
    t.integer  "guarantor_ss"
    t.string   "guarantor_phone"
    t.date     "guarantor_dob"
    t.date     "closing_date"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.text     "property_instructions"
    t.integer  "rehab_time"
    t.integer  "add_sq_ft"
    t.boolean  "rehabber"
    t.string   "contractor_name"
    t.string   "contractor_company"
    t.string   "contractor_phone"
    t.string   "contractor_email"
    t.string   "closer_name"
    t.string   "closer_company"
    t.string   "closer_email"
    t.string   "closer_phone"
    t.string   "insurance_name"
    t.string   "insurance_company"
    t.string   "insurance_email"
    t.string   "insurance_phone"
    t.integer  "lender_loan_id"
    t.integer  "lender_quote_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "entity_docs"
    t.index ["lender_loan_id"], name: "index_loan_applications_on_lender_loan_id", using: :btree
    t.index ["lender_quote_id"], name: "index_loan_applications_on_lender_quote_id", using: :btree
  end

  create_table "loan_quotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "property_type"
    t.boolean  "purchase"
    t.boolean  "occupied"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "price"
    t.integer  "down_payment"
    t.integer  "rehab"
    t.integer  "arv"
    t.integer  "experience"
    t.integer  "fico"
    t.string   "referral"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_loan_quotes_on_user_id", using: :btree
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.string  "unsubscriber_type"
    t.integer "unsubscriber_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
    t.index ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree
  end

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.string   "sender_type"
    t.integer  "sender_id"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.string   "notified_object_type"
    t.integer  "notified_object_id"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
    t.index ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
    t.index ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
    t.index ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
    t.index ["type"], name: "index_mailboxer_notifications_on_type", using: :btree
  end

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.string   "receiver_type"
    t.integer  "receiver_id"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.boolean  "is_delivered",               default: false
    t.string   "delivery_method"
    t.string   "message_id"
    t.index ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
    t.index ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree
  end

  create_table "price_features", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "feature_id"
    t.integer  "floor"
    t.integer  "ceiling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.float    "lat"
    t.float    "lng"
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
    t.float    "lat"
    t.float    "lng"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "appointments", "bids"
  add_foreign_key "appointments", "contractor_bids"
  add_foreign_key "bid_projects", "bids"
  add_foreign_key "bid_projects", "contractor_bids"
  add_foreign_key "bids", "projects"
  add_foreign_key "bids", "users"
  add_foreign_key "contractor_bids", "users"
  add_foreign_key "estimates", "features"
  add_foreign_key "estimates", "price_features"
  add_foreign_key "estimates", "project_features"
  add_foreign_key "lender_loans", "users"
  add_foreign_key "lender_quotes", "lender_underwritings"
  add_foreign_key "lender_quotes", "loan_quotes"
  add_foreign_key "lender_underwritings", "users"
  add_foreign_key "loan_applications", "lender_loans"
  add_foreign_key "loan_applications", "lender_quotes"
  add_foreign_key "loan_quotes", "users"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "price_features", "features"
  add_foreign_key "price_features", "users"
  add_foreign_key "project_features", "features"
  add_foreign_key "project_features", "projects"
  add_foreign_key "projects", "users"
end
