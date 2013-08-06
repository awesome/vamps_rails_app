# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130806201905) do

  create_table "contacts", force: true do |t|
    t.string   "contact",     limit: 32
    t.string   "email",       limit: 64
    t.string   "institution", limit: 128
    t.string   "vamps_name",  limit: 20
    t.string   "first_name",  limit: 20
    t.string   "last_name",   limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["contact", "email", "institution"], name: "contact_email_inst", unique: true, using: :btree
  add_index "contacts", ["institution"], name: "institution", length: {"institution"=>15}, using: :btree

  create_table "dna_regions", force: true do |t|
    t.string "dna_region", limit: 32
  end

  add_index "dna_regions", ["dna_region"], name: "dna_region", unique: true, using: :btree

  create_table "sequences", force: true do |t|
    t.binary   "sequence_comp", limit: 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sequences", ["sequence_comp"], name: "sequence_comp", unique: true, length: {"sequence_comp"=>400}, using: :btree

  create_table "taxonomies", force: true do |t|
    t.string   "taxonomy",   limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taxonomies", ["taxonomy"], name: "taxonomy", unique: true, length: {"taxonomy"=>255}, using: :btree

  create_table "users", force: true do |t|
    t.string  "user",           limit: 20
    t.string  "passwd",         limit: 50
    t.integer "active",         limit: 2
    t.integer "security_level", limit: 2
  end

  add_index "users", ["user"], name: "user", unique: true, using: :btree

end
