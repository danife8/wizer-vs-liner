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

ActiveRecord::Schema[8.0].define(version: 2025_01_29_195222) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "dnas", force: :cascade do |t|
    t.string "row_0", limit: 6, array: true
    t.string "row_1", limit: 6, array: true
    t.string "row_2", limit: 6, array: true
    t.string "row_3", limit: 6, array: true
    t.string "row_4", limit: 6, array: true
    t.string "row_5", limit: 6, array: true
    t.bigint "human_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["human_id"], name: "index_dnas_on_human_id"
  end

  create_table "humans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mutants", force: :cascade do |t|
    t.string "mutantable_type", null: false
    t.bigint "mutantable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mutantable_type", "mutantable_id"], name: "index_mutants_on_mutantable"
  end

  create_table "non_mutants", force: :cascade do |t|
    t.string "non_mutantable_type", null: false
    t.bigint "non_mutantable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["non_mutantable_type", "non_mutantable_id"], name: "index_non_mutants_on_non_mutantable"
  end

  add_foreign_key "dnas", "humans"
end
