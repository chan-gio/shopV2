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

ActiveRecord::Schema[7.1].define(version: 2024_02_02_091834) do
  create_table "product_receipts", force: :cascade do |t|
    t.integer "product_id"
    t.integer "receipt_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_receipts_on_product_id"
    t.index ["receipt_id"], name: "index_product_receipts_on_receipt_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "price"
    t.string "category"
    t.string "size"
    t.string "color"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.string "cname"
    t.string "cphone"
    t.string "caddress"
    t.string "cemail"
    t.string "note"
    t.string "payment_method"
    t.string "total"
    t.string "receipt_status"
    t.string "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
