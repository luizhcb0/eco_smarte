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

ActiveRecord::Schema.define(version: 20170830212101) do

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

  create_table "pool_models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                              null: false
    t.integer  "pool_model_id"
    t.string   "name",                                 null: false
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "state"
    t.float    "volume",                    limit: 24
    t.integer  "volume_unit"
    t.integer  "pump_size"
    t.integer  "filter_type"
    t.float    "filter_size",               limit: 24
    t.string   "vacuum_brand"
    t.boolean  "negative_edge"
    t.boolean  "attached_spa"
    t.string   "additional_water_features"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["pool_model_id"], name: "index_pools_on_pool_model_id", using: :btree
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
    t.string   "state"
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

  create_table "warranties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",       null: false
    t.string   "last_name",        null: false
    t.string   "street_address",   null: false
    t.string   "street_address_2"
    t.string   "city",             null: false
    t.string   "state",            null: false
    t.string   "postal_code",      null: false
    t.string   "country",          null: false
    t.string   "phone",            null: false
    t.string   "email",            null: false
    t.string   "model",            null: false
    t.string   "other"
    t.string   "serial",           null: false
    t.date     "date_purchased",   null: false
    t.string   "dealership"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "warranty_mails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",       null: false
    t.string   "last_name",        null: false
    t.string   "street_address",   null: false
    t.string   "street_address_2"
    t.string   "city",             null: false
    t.string   "state",            null: false
    t.string   "postal_code",      null: false
    t.string   "country",          null: false
    t.string   "phone",            null: false
    t.string   "email",            null: false
    t.string   "model",            null: false
    t.string   "other"
    t.string   "serial",           null: false
    t.string   "date_purchased",   null: false
    t.string   "dealership"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "waters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pool_id",                     null: false
    t.date     "measurement_date",            null: false
    t.float    "temperature",      limit: 24
    t.integer  "temperature_unit"
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

  add_foreign_key "pools", "pool_models", on_delete: :cascade
  add_foreign_key "pools", "users", on_delete: :cascade
  add_foreign_key "waters", "pools", on_delete: :cascade
end
