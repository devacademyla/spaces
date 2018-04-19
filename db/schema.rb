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

ActiveRecord::Schema.define(version: 20180419200713) do

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
    t.string "description"
    t.integer "interval"
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_assets_on_space_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.bigint "space_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_contracts_on_space_id"
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
    t.string "description"
    t.string "organization_identifier"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "supplier_identity"
    t.integer "ranking"
    t.string "services"
    t.string "category"
    t.string "address"
    t.string "bank"
    t.string "current_account"
    t.string "email"
    t.string "cci"
    t.string "deductions_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["space_id"], name: "index_spaces_on_space_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "brand"
    t.string "color"
    t.string "presentation"
    t.string "category"
    t.string "sub_category"
    t.integer "status"
    t.integer "stock"
    t.integer "stock_minimun"
    t.integer "stock_reposition"
    t.string "note"
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
    t.string "address"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["organization_id"], name: "index_users_on_organization_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.bigint "space_id"
    t.bigint "supply_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_warehouses_on_space_id"
    t.index ["supply_id"], name: "index_warehouses_on_supply_id"
  end

  add_foreign_key "asset_suppliers", "assets"
  add_foreign_key "asset_suppliers", "providers", column: "supplier_id"
  add_foreign_key "assets", "spaces"
  add_foreign_key "contracts", "spaces"
  add_foreign_key "contracts", "users"
  add_foreign_key "maintenances", "assets"
  add_foreign_key "maintenances", "providers", column: "supplier_id"
  add_foreign_key "spaces", "spaces"
  add_foreign_key "users", "organizations"
  add_foreign_key "warehouses", "spaces"
  add_foreign_key "warehouses", "supplies"
end
