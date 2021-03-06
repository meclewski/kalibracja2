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

ActiveRecord::Schema.define(version: 20170417200509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "brands", force: :cascade do |t|
    t.string   "e_brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.integer  "calibration_number"
    t.string   "inventory_number"
    t.string   "serial_number"
    t.date     "calibration_date"
    t.string   "verification_result"
    t.integer  "user_id"
    t.integer  "admin_id"
    t.integer  "place_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "equipment_type_id"
    t.date     "production_date"
  end

  create_table "equipment_types", force: :cascade do |t|
    t.string   "type_of_equipment"
    t.integer  "producer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "e_price"
    t.string   "ver_price"
    t.date     "expiration_date"
    t.integer  "laboratory_id"
    t.integer  "verification_id"
  end

  create_table "equipment_types_laboratories", id: false, force: :cascade do |t|
    t.integer "equipment_type_id"
    t.integer "laboratory_id"
  end

  create_table "laboratories", force: :cascade do |t|
    t.string   "lab_name"
    t.string   "accreditation"
    t.string   "address"
    t.string   "phone"
    t.string   "contact"
    t.string   "lab_description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "place_of_use"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string   "producer_name"
    t.integer  "brand_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "verifications", force: :cascade do |t|
    t.string   "type_of_verification"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
