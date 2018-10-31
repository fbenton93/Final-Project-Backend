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

ActiveRecord::Schema.define(version: 2018_10_30_160647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.string "title"
    t.text "written_content"
    t.string "atmosphere"
    t.string "time_visited"
    t.integer "score_busyness"
    t.integer "score_ambiance"
    t.integer "score_table_space"
    t.integer "score_noise_level"
    t.integer "score_studying"
    t.integer "score_friendliness"
    t.integer "score_value"
    t.integer "score_coffee_quality"
    t.string "score_roast"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "profile_img_url"
    t.string "pref_atmo_1"
    t.string "pref_atmo_2"
    t.string "pref_atmo_3"
    t.integer "pref_busyness"
    t.integer "pref_ambiance"
    t.integer "pref_coffee_quality"
    t.integer "pref_light_roast"
    t.integer "pref_medium_roast"
    t.integer "pref_dark_roast"
    t.integer "pref_table_space"
    t.integer "pref_noise_level"
    t.integer "pref_studying"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
