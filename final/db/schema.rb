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

ActiveRecord::Schema.define(version: 20151211180045) do

  create_table "course_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "row"
    t.integer  "column"
    t.integer  "seating_chart_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "course_users", ["course_id"], name: "index_course_users_on_course_id"
  add_index "course_users", ["seating_chart_id"], name: "index_course_users_on_seating_chart_id"

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.integer  "size"
    t.integer  "user_id"
    t.integer  "seating_chart_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "courses", ["seating_chart_id"], name: "index_courses_on_seating_chart_id"
  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "seating_charts", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.integer  "seat_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seating_charts", ["course_id"], name: "index_seating_charts_on_course_id"

  create_table "users", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "teacher_code"
    t.boolean  "teacher",                default: false, null: false
    t.string   "name",                   default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
