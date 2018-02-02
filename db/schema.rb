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

ActiveRecord::Schema.define(version: 20180202210909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "supplier_id"
    t.bigint "asset_id"
    t.index ["asset_id"], name: "index_asset_suppliers_on_asset_id"
    t.index ["supplier_id"], name: "index_asset_suppliers_on_supplier_id"
  end

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "model"
    t.string "color"
    t.string "category"
    t.string "sub_category"
    t.integer "status"
    t.string "description"
    t.integer "interval"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenances", force: :cascade do |t|
    t.date "registration_date"
    t.string "status"
    t.bigint "supplier_id"
    t.bigint "asset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_maintenances_on_asset_id"
    t.index ["supplier_id"], name: "index_maintenances_on_supplier_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "ruc"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.string "category"
    t.integer "capacity"
    t.float "area"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_spaces_on_space_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "supplier_identity"
    t.integer "ranking"
    t.string "services"
    t.string "category"
    t.string "address"
    t.string "bank"
    t.integer "current_account"
    t.string "email"
    t.integer "cci"
    t.integer "deductions_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "mobile_phone"
    t.integer "emergency_phone"
    t.string "emergency_contact"
    t.date "birthday"
    t.string "role"
    t.integer "dni"
    t.string "address"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "asset_suppliers", "assets"
  add_foreign_key "asset_suppliers", "suppliers"
  add_foreign_key "maintenances", "assets"
  add_foreign_key "maintenances", "suppliers"
  add_foreign_key "spaces", "spaces"
  add_foreign_key "users", "organizations"
end
