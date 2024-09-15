# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_15_004423) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.string "albumtitle", null: false
    t.string "displayname", null: false
    t.string "slug", null: false
    t.string "releasedate", null: false
    t.string "cover", null: false
    t.text "album_notes"
    t.boolean "is_statsable", null: false
    t.integer "lastmod", null: false
    t.integer "lastuser"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist", null: false
    t.string "slug", null: false
    t.text "bio"
    t.string "active_years"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "bandmembers", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "people_id", null: false
    t.string "role", default: "Musician", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["artist_id"], name: "index_bandmembers_on_artist_id"
    t.index ["people_id"], name: "index_bandmembers_on_people_id"
  end

  create_table "footnote_symbols", force: :cascade do |t|
    t.integer "footnote_number", null: false
    t.string "symbol", limit: 3, null: false
    t.string "sane_value", limit: 3
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["footnote_number", "symbol"], name: "index_footnote_symbols_on_footnote_number_and_symbol", unique: true
  end

  create_table "people", force: :cascade do |t|
    t.string "personname", null: false
    t.string "slug", null: false
    t.text "notes", null: false
    t.integer "appearances", default: 0, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["slug"], name: "index_people_on_slug", unique: true
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "bandmembers", "artists"
  add_foreign_key "bandmembers", "people", column: "people_id"
end
