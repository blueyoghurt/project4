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

ActiveRecord::Schema.define(version: 20161102033223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.integer  "approval"
    t.integer  "student_id"
    t.integer  "template_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["student_id"], name: "index_cards_on_student_id", using: :btree
    t.index ["template_id"], name: "index_cards_on_template_id", using: :btree
  end

  create_table "education_levels", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.float    "duration"
    t.text     "description"
    t.integer  "vacancy"
    t.string   "image"
    t.integer  "school_id"
    t.integer  "education_level_id"
    t.integer  "ngo_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["education_level_id"], name: "index_events_on_education_level_id", using: :btree
    t.index ["ngo_id"], name: "index_events_on_ngo_id", using: :btree
    t.index ["school_id"], name: "index_events_on_school_id", using: :btree
  end

  create_table "levels", force: :cascade do |t|
    t.string   "description"
    t.integer  "education_level_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["education_level_id"], name: "index_levels_on_education_level_id", using: :btree
  end

  create_table "ngo_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ngo_users", force: :cascade do |t|
    t.integer  "ngo_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ngo_id"], name: "index_ngo_users_on_ngo_id", using: :btree
    t.index ["user_id"], name: "index_ngo_users_on_user_id", using: :btree
  end

  create_table "ngos", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "website"
    t.text     "description"
    t.string   "logo"
    t.string   "email"
    t.integer  "ngo_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["ngo_category_id"], name: "index_ngos_on_ngo_category_id", using: :btree
  end

  create_table "school_users", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_school_users_on_school_id", using: :btree
    t.index ["user_id"], name: "index_school_users_on_user_id", using: :btree
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "website"
    t.string   "logo"
    t.string   "email"
    t.integer  "education_level_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["education_level_id"], name: "index_schools_on_education_level_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "level_id"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_students_on_level_id", using: :btree
    t.index ["school_id"], name: "index_students_on_school_id", using: :btree
    t.index ["user_id"], name: "index_students_on_user_id", using: :btree
  end

  create_table "tasks", force: :cascade do |t|
    t.text     "description"
    t.integer  "template_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["template_id"], name: "index_tasks_on_template_id", using: :btree
  end

  create_table "tasktrackers", force: :cascade do |t|
    t.string   "picture"
    t.text     "description"
    t.integer  "card_id"
    t.integer  "task_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["card_id"], name: "index_tasktrackers_on_card_id", using: :btree
    t.index ["task_id"], name: "index_tasktrackers_on_task_id", using: :btree
  end

  create_table "templates", force: :cascade do |t|
    t.integer  "status"
    t.integer  "event_id"
    t.integer  "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_templates_on_event_id", using: :btree
    t.index ["level_id"], name: "index_templates_on_level_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "profile_pic"
    t.integer  "usertype"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "cards", "students"
  add_foreign_key "cards", "templates"
  add_foreign_key "events", "education_levels"
  add_foreign_key "events", "ngos"
  add_foreign_key "events", "schools"
  add_foreign_key "levels", "education_levels"
  add_foreign_key "ngo_users", "ngos"
  add_foreign_key "ngo_users", "users"
  add_foreign_key "ngos", "ngo_categories"
  add_foreign_key "school_users", "schools"
  add_foreign_key "school_users", "users"
  add_foreign_key "schools", "education_levels"
  add_foreign_key "students", "levels"
  add_foreign_key "students", "schools"
  add_foreign_key "students", "users"
  add_foreign_key "tasks", "templates"
  add_foreign_key "tasktrackers", "cards"
  add_foreign_key "tasktrackers", "tasks"
  add_foreign_key "templates", "events"
  add_foreign_key "templates", "levels"
end
