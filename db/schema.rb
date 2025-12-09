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

ActiveRecord::Schema[8.0].define(version: 2025_12_09_101014) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "bird_migrations", force: :cascade do |t|
    t.string "bird_name"
    t.string "movement_direction"
    t.string "indicator"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "star_pattern_id"
    t.bigint "wave_pattern_id"
    t.bigint "bird_migration_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bird_migration_id"], name: "index_observations_on_bird_migration_id"
    t.index ["star_pattern_id"], name: "index_observations_on_star_pattern_id"
    t.index ["user_id"], name: "index_observations_on_user_id"
    t.index ["wave_pattern_id"], name: "index_observations_on_wave_pattern_id"
  end

  create_table "star_patterns", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.string "rising_point"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wave_patterns", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.string "consistency"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "observations", "bird_migrations"
  add_foreign_key "observations", "star_patterns"
  add_foreign_key "observations", "users"
  add_foreign_key "observations", "wave_patterns"
end
