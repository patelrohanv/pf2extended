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

ActiveRecord::Schema[7.0].define(version: 2023_05_02_165712) do
  create_table "equipment_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.decimal "weight"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spell_schools", force: :cascade do |t|
    t.integer "spell_id", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_spell_schools_on_school_id"
    t.index ["spell_id"], name: "index_spell_schools_on_spell_id"
  end

  create_table "spell_traditions", force: :cascade do |t|
    t.integer "spell_id", null: false
    t.integer "tradition_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spell_id"], name: "index_spell_traditions_on_spell_id"
    t.index ["tradition_id"], name: "index_spell_traditions_on_tradition_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "level"
    t.string "casting_time"
    t.string "range"
    t.string "duration"
    t.string "components"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traditions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "spell_schools", "schools"
  add_foreign_key "spell_schools", "spells"
  add_foreign_key "spell_traditions", "spells"
  add_foreign_key "spell_traditions", "traditions"
end
