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

ActiveRecord::Schema.define(version: 2020_04_30_160606) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "doggy_name"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "full_name"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dogsitters_on_city_id"
  end

  create_table "outings", force: :cascade do |t|
    t.integer "city_id"
    t.integer "stroll_id"
    t.integer "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_outings_on_city_id"
    t.index ["dog_id"], name: "index_outings_on_dog_id"
    t.index ["stroll_id"], name: "index_outings_on_stroll_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "city_id"
    t.integer "dogsitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

end
