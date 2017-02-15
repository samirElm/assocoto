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

ActiveRecord::Schema.define(version: 20170215101343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "name", default: ""
  end

  create_table "milestones", force: :cascade do |t|
    t.datetime "date"
    t.string   "title",      default: ""
    t.integer  "mission_id"
    t.index ["mission_id"], name: "index_milestones_on_mission_id", using: :btree
  end

  create_table "missions", force: :cascade do |t|
    t.string   "title",       default: ""
    t.text     "description", default: ""
    t.datetime "deadline"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_missions_on_project_id", using: :btree
  end

  create_table "missions_users", force: :cascade do |t|
    t.integer "mission_id"
    t.integer "user_id"
    t.index ["mission_id"], name: "index_missions_users_on_mission_id", using: :btree
    t.index ["user_id"], name: "index_missions_users_on_user_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string  "name",          default: ""
    t.integer "department_id"
    t.index ["department_id"], name: "index_projects_on_department_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "date"
    t.string   "title",       default: ""
    t.text     "description", default: ""
    t.integer  "mission_id"
    t.index ["mission_id"], name: "index_reports_on_mission_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.string   "mobile_phone",           default: ""
    t.string   "address",                default: ""
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "first_name",   default: ""
    t.string "last_name",    default: ""
    t.string "email",        default: ""
    t.string "mobile_phone", default: ""
    t.string "address",      default: ""
  end

  add_foreign_key "milestones", "missions"
  add_foreign_key "missions", "projects"
  add_foreign_key "missions_users", "missions"
  add_foreign_key "missions_users", "users"
  add_foreign_key "projects", "departments"
  add_foreign_key "reports", "missions"
end
