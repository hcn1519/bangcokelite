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

ActiveRecord::Schema.define(version: 20151207143856) do

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
    t.integer  "small_deposit"
    t.integer  "least_contract"
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
    t.string   "room_img1"
    t.string   "room_img2"
    t.string   "room_img3"
    t.string   "room_img4"
    t.string   "room_img5"
    t.string   "room_img6"
    t.string   "room_img7"
    t.string   "room_img8"
    t.string   "common_img1"
    t.string   "common_img2"
    t.string   "common_img3"
    t.string   "common_img4"
    t.string   "meal_img1"
    t.string   "meal_img2"
    t.string   "meal_img3"
    t.string   "meal_img4"
    t.integer  "hasuk_house_viewcount"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
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

end
