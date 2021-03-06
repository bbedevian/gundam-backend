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

ActiveRecord::Schema.define(version: 2020_05_22_134711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gundams", force: :cascade do |t|
    t.string "name"
    t.integer "attack"
    t.integer "hp"
    t.string "img_url"
    t.string "rarity"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "item_id"
    t.boolean "in_use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "attack_bonus"
    t.integer "hp_bonus"
    t.integer "price"
    t.string "rarity"
    t.string "img_url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "opponents", force: :cascade do |t|
    t.string "wave"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_gundams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gundam_id"
    t.integer "slot1"
    t.integer "slot2"
    t.integer "slot3"
    t.integer "slot4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "balance", default: 100
    t.integer "level", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
