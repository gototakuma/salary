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

ActiveRecord::Schema.define(version: 20190903015536) do

  create_table "pays", force: :cascade do |t|
    t.integer "started"
    t.integer "finished"
    t.date "worked_on"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary"
    t.boolean "nextday_box"
    t.integer "started_a"
    t.integer "finished_a"
    t.integer "started_b"
    t.integer "finished_b"
    t.string "paynote"
    t.index ["user_id"], name: "index_pays_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.integer "basic_salary"
    t.integer "recharge"
    t.integer "night_salary"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
