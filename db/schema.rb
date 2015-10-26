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

ActiveRecord::Schema.define(version: 20151026072319) do

  create_table "hasuk_houses", force: :cascade do |t|
    t.string   "hasuk_name"
    t.string   "celPhone"
    t.string   "telPhone"
    t.string   "memo"
    t.string   "hasuk_kind"
    t.string   "gender"
    t.integer  "size_from"
    t.integer  "size_to"
    t.integer  "floor_from"
    t.integer  "floor_to"
    t.integer  "building_age"
    t.integer  "remodeling"
    t.integer  "small_deposit"
    t.integer  "big_deposit"
    t.integer  "price_from"
    t.integer  "price_to"
    t.integer  "least_contract"
    t.string   "extra_price"
    t.string   "meal"
    t.string   "meal_memo"
    t.string   "personal_option"
    t.string   "common_option"
    t.string   "internet"
    t.text     "post_description"
    t.string   "address"
    t.float    "lat"
    t.float    "lng"
    t.string   "univ_distance1"
    t.string   "univ_distance2"
    t.string   "univ_distance3"
    t.string   "sogang_gate1"
    t.string   "sogang_gate2"
    t.string   "sogang_gate3"
    t.string   "ewha_gate1"
    t.string   "ewha_gate2"
    t.string   "ewha_gate3"
    t.string   "yonsei_gate1"
    t.string   "yonsei_gate2"
    t.string   "yonsei_gate3"
    t.integer  "distance_time1"
    t.integer  "distance_time2"
    t.integer  "distance_time3"
    t.integer  "distance1"
    t.integer  "distance2"
    t.integer  "distance3"
    t.string   "room_img"
    t.integer  "room_price"
    t.string   "room_description"
    t.string   "common_img"
    t.string   "meal_img"
    t.integer  "discount_price"
    t.integer  "discount_rate"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
