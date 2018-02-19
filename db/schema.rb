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

ActiveRecord::Schema.define(version: 20180215181142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_suppliers", force: :cascade do |t|
    t.bigint "asset_id"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.text "description"
    t.integer "interval"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_assets_on_space_id"
  end

  create_table "contract_spaces", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_spaces_on_contract_id"
    t.index ["space_id"], name: "index_contract_spaces_on_space_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contracts_on_user_id"
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
    t.text "description"
    t.string "organization_identifier"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.date "payment_date"
    t.date "due_date"
    t.float "amount"
    t.string "status"
    t.text "note"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_payments_on_contract_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "space_identifier"
    t.string "name"
    t.string "category"
    t.integer "capacity"
    t.float "area"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.index ["space_id"], name: "index_spaces_on_space_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "supplier_identity"
    t.integer "ranking"
    t.string "services"
    t.string "category"
    t.text "address"
    t.string "bank"
    t.string "current_account"
    t.string "email"
    t.string "cci"
    t.string "deductions_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "brand"
    t.string "color"
    t.string "presentation"
    t.string "category"
    t.string "sub_category"
    t.integer "status"
    t.integer "stock"
    t.integer "stock_minimun"
    t.integer "stock_reposition"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "mobile_phone"
    t.string "emergency_phone"
    t.string "emergency_contact"
    t.date "birthday"
    t.string "role"
    t.integer "user_identifier"
    t.text "address"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.bigint "space_id"
    t.bigint "supply_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_warehouses_on_space_id"
    t.index ["supply_id"], name: "index_warehouses_on_supply_id"
  end

  add_foreign_key "assets", "spaces"
  add_foreign_key "contracts", "users"
  add_foreign_key "maintenances", "assets"
  add_foreign_key "maintenances", "suppliers"
  add_foreign_key "payments", "contracts"
  add_foreign_key "spaces", "spaces"
  add_foreign_key "users", "organizations"
  add_foreign_key "warehouses", "spaces"
  add_foreign_key "warehouses", "supplies"
end
