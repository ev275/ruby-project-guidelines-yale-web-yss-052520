# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_11_154808) do

  create_table "tasks", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.datetime "due_date"
    t.datetime "assigned_date"
  end

  create_table "team_to_dos", force: :cascade do |t|
    t.integer "team_id"
    t.integer "user_id"
    t.string "name"
    t.boolean "complete?"
    t.string "due_date"
  end

  create_table "team_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

  create_table "to_dos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.boolean "complete?"
    t.integer "priority_level"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "college"
    t.integer "age"
    t.string "username"
    t.string "password"
  end

end
