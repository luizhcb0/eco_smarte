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

ActiveRecord::Schema.define(version: 20170827233738) do

  create_table "contact_messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                  null: false
    t.string   "email",                                 null: false
    t.string   "website",                  default: ""
    t.string   "subject",                               null: false
    t.text     "content",    limit: 65535,              null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                  null: false
    t.string   "email",                                 null: false
    t.string   "website",                  default: ""
    t.string   "subject",                               null: false
    t.text     "content",    limit: 65535,              null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "pools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                   null: false
    t.string   "name",                      null: false
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "model"
    t.integer  "volume"
    t.string   "volume_unit"
    t.string   "pump_size"
    t.string   "filter_size"
    t.string   "filter_type"
    t.string   "vacuum_brand"
    t.boolean  "negative_edge"
    t.boolean  "attached_spa"
    t.string   "additional_water_features"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["user_id"], name: "index_pools_on_user_id", using: :btree
  end

  create_table "texts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",     limit: 65535, null: false
    t.integer  "description",               null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.integer  "postal_code"
    t.integer  "user_type",                           null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "waters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pool_id",                     null: false
    t.float    "temperature",      limit: 24
    t.string   "temperature_unit"
    t.float    "ph",               limit: 24
    t.float    "cuppm",            limit: 24
    t.float    "calcium",          limit: 24
    t.float    "phosphate",        limit: 24
    t.float    "chlorine",         limit: 24
    t.float    "oxygen",           limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["pool_id"], name: "index_waters_on_pool_id", using: :btree
  end

  add_foreign_key "pools", "users", on_delete: :cascade
  add_foreign_key "waters", "pools", on_delete: :cascade
end
