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

ActiveRecord::Schema.define(version: 2020_05_16_115836) do

  create_table "consumed_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "food_item_id"
    t.decimal "amount_consumed", precision: 3, scale: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.decimal "kcal", precision: 4, scale: 1
    t.decimal "protein", precision: 4, scale: 1
    t.decimal "carbohydrate", precision: 4, scale: 1
    t.decimal "fat", precision: 4, scale: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "consumed_lists", "food_items"
end
