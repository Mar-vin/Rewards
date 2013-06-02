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

ActiveRecord::Schema.define(version: 20130601175612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creatures", force: true do |t|
    t.integer  "xp",           default: 0
    t.integer  "charisma",     default: 0
    t.integer  "constitution", default: 0
    t.integer  "dexterity",    default: 0
    t.integer  "intelligence", default: 0
    t.integer  "strength",     default: 0
    t.integer  "wisdom",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_ownerships", force: true do |t|
    t.integer  "owner_id",               null: false
    t.string   "class_name",             null: false
    t.integer  "amount",     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
