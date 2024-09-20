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

ActiveRecord::Schema[7.2].define(version: 2024_09_17_025632) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "albums", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.string "title", null: false
    t.string "slug", null: false
    t.date "release_date", null: false
    t.text "album_notes"
    t.integer "lastmod", null: false
    t.integer "lastuser"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.text "description"
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name", null: false
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

  create_table "set_types", force: :cascade do |t|
    t.string "settype", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["settype"], name: "index_set_types_on_settype", unique: true
  end

  create_table "setlist_items", force: :cascade do |t|
    t.bigint "setlist_id", null: false
    t.bigint "song_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setlist_id"], name: "index_setlist_items_on_setlist_id"
    t.index ["song_id"], name: "index_setlist_items_on_song_id"
  end

  create_table "setlists", force: :cascade do |t|
    t.integer "show_id", null: false
    t.integer "song_id", null: false
    t.string "displayname", null: false
    t.text "setnumber", null: false
    t.integer "position", null: false
    t.integer "transition_id", null: false
    t.string "footnote", null: false
    t.string "tracktime", limit: 7
    t.integer "isjam", null: false
    t.integer "isreprise", null: false
    t.string "uniqueid", limit: 8, null: false
    t.integer "isjamchart", default: 0, null: false
    t.string "jamchartnote", limit: 512
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.integer "venue_id", null: false
    t.integer "artist_id", null: false
    t.date "showdate", null: false
    t.string "showtitle", limit: 255
    t.text "meta", null: false
    t.text "shownotes", null: false
    t.integer "showyear"
    t.integer "showorder", null: false
    t.string "settype", limit: 50, default: "Set", null: false
    t.string "opener", limit: 100, null: false
    t.integer "tour_id", default: 1
    t.integer "lastuser", default: 0, null: false
    t.text "soundcheck", null: false
    t.string "permalink", limit: 255, null: false
    t.integer "isverified", default: 0, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["artist_id"], name: "index_shows_on_artist_id"
    t.index ["tour_id"], name: "index_shows_on_tour_id"
    t.index ["venue_id"], name: "index_shows_on_venue_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.integer "is_original", null: false
    t.string "original_artist", limit: 55
    t.text "lyrics"
    t.text "metadata"
    t.text "nickname"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "artist_id"
    t.integer "album_id"
  end

  create_table "stats", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "shows_attended"
    t.text "favorite_songs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stats_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "tourname", limit: 50, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["tourname"], name: "index_tours_on_tourname", unique: true
  end

  create_table "transitions", force: :cascade do |t|
    t.string "transition", limit: 3, null: false
    t.string "dropdown", limit: 20, null: false
    t.string "default_transition", limit: 20, null: false
    t.string "desc", limit: 55, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "venuename", null: false
    t.string "streetaddress"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.string "url"
    t.integer "capacity"
    t.integer "aliasof", default: 0, null: false
    t.string "slug"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "albums", "artists"
  add_foreign_key "bandmembers", "artists"
  add_foreign_key "bandmembers", "people", column: "people_id"
  add_foreign_key "setlist_items", "setlists"
  add_foreign_key "setlist_items", "songs"
  add_foreign_key "setlists", "songs"
  add_foreign_key "shows", "artists"
  add_foreign_key "shows", "tours", on_delete: :nullify
  add_foreign_key "stats", "users"
end
