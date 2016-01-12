# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160112123509) do

  create_table "attachments", force: :cascade do |t|
    t.integer  "hasuk_house_id"
    t.integer  "user_id"
    t.string   "img"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "attachments", ["hasuk_house_id"], name: "index_attachments_on_hasuk_house_id"
  add_index "attachments", ["user_id"], name: "index_attachments_on_user_id"

  create_table "avg_rating_scores", force: :cascade do |t|
    t.integer  "hasuk_house_id"
    t.integer  "how_many_people_did"
    t.float    "total_meal_score"
    t.float    "total_clean_score"
    t.float    "total_silence_score"
    t.float    "total_aircondition_score"
    t.float    "total_cctv_score"
    t.float    "total_score"
    t.float    "all_score"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "favorite_hasuk_houses", force: :cascade do |t|
    t.integer  "hasuk_house_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "hasuk_houses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "hasuk_name"
    t.string   "celPhone"
    t.string   "telPhone"
    t.string   "contact_memo"
    t.string   "hasuk_kind"
    t.string   "gender"
    t.integer  "price_from"
    t.integer  "price_to"
    t.integer  "miniroom_price_from"
    t.integer  "miniroom_price_to"
    t.integer  "oneroom_price_from"
    t.integer  "oneroom_price_to"
    t.integer  "sleeping_only_price_from"
    t.integer  "mate_price_from"
    t.integer  "small_deposit",            default: 0
    t.integer  "least_contract"
    t.integer  "big_deposit",              default: 0
    t.boolean  "admin_fee",                default: false
    t.string   "title"
    t.text     "hasuk_house_description"
    t.string   "address"
    t.float    "lat"
    t.float    "lng"
    t.string   "division"
    t.string   "univ1"
    t.string   "univ2"
    t.string   "gate1"
    t.string   "gate2"
    t.integer  "distance_time1"
    t.integer  "distance_time2"
    t.integer  "distance1"
    t.integer  "distance2"
    t.string   "trans_kind1"
    t.string   "trans_kind2"
    t.string   "station1"
    t.string   "station2"
    t.integer  "trans_distance_time1"
    t.integer  "trans_distance1"
    t.integer  "trans_distance_time2"
    t.integer  "trans_distance2"
    t.string   "main_img"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "viewcount"
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id"

  create_table "rating_for_hasuk_houses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "avg_rating_score_id"
    t.float    "meal_score"
    t.float    "clean_score"
    t.float    "silence_score"
    t.float    "aircondition_score"
    t.float    "cctv_score"
    t.float    "total_score"
    t.float    "all_score"
    t.text     "comment"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
  end

  add_index "users", ["provider"], name: "index_users_on_provider"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid"], name: "index_users_on_uid"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "view_counts", force: :cascade do |t|
    t.string   "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
