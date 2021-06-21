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

ActiveRecord::Schema.define(version: 2021_06_21_163652) do

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trade_coins", force: :cascade do |t|
    t.integer "trade_id", null: false
    t.integer "coin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coin_id"], name: "index_trade_coins_on_coin_id"
    t.index ["trade_id"], name: "index_trade_coins_on_trade_id"
  end

  create_table "trades", force: :cascade do |t|
    t.decimal "coin_trade_price"
    t.integer "quantity"
    t.decimal "total"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.decimal "buying_power"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "trade_coins", "coins"
  add_foreign_key "trade_coins", "trades"
end
