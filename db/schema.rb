# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_26_210131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latMin"
    t.float "latMax"
    t.float "longMin"
    t.float "longMax"
    t.float "centerLat"
    t.float "centerLong"
  end

  create_table "states", force: :cascade do |t|
    t.bigint "region_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_states_on_region_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weathers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "region_id", null: false
    t.string "description"
    t.integer "temp"
    t.integer "wind"
    t.integer "rain"
    t.integer "cloud"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_weathers_on_region_id"
    t.index ["user_id"], name: "index_weathers_on_user_id"
  end

  add_foreign_key "states", "regions"
  add_foreign_key "weathers", "regions"
  add_foreign_key "weathers", "users"
end
