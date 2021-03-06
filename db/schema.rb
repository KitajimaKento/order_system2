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

ActiveRecord::Schema.define(version: 2019_11_12_080806) do

  create_table "menu_masters", force: :cascade do |t|
    t.integer "menu_ID"
    t.string "name"
    t.integer "price"
    t.integer "price_tax_not"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_selects", force: :cascade do |t|
    t.integer "order_ID"
    t.integer "menu_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_ID"
    t.integer "menu_ID"
    t.integer "table_ID"
    t.string "login_ID"
    t.integer "total"
    t.integer "total_tax_not"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "table_ID"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login_ID"
    t.string "password"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
