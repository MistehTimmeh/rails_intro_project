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

ActiveRecord::Schema[7.1].define(version: 2024_03_03_095548) do
  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_games", force: :cascade do |t|
    t.string "name"
    t.date "release_date"
    t.text "summary"
    t.decimal "metacritic_score"
    t.decimal "user_score"
    t.integer "publisher_id", null: false
    t.integer "developer_id", null: false
    t.integer "platform_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_video_games_on_developer_id"
    t.index ["platform_id"], name: "index_video_games_on_platform_id"
    t.index ["publisher_id"], name: "index_video_games_on_publisher_id"
  end

  add_foreign_key "video_games", "developers"
  add_foreign_key "video_games", "platforms"
  add_foreign_key "video_games", "publishers"
end
