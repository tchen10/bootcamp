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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130516013151) do

  create_table "assignments", :force => true do |t|
    t.integer "user_id"
    t.integer "project_id"
  end

  create_table "milestones", :force => true do |t|
    t.integer "project_id"
    t.string  "title"
    t.string  "description"
    t.date    "date_created"
    t.date    "due_date"
  end

  create_table "projects", :force => true do |t|
    t.string "title"
    t.string "description"
    t.date   "date_created"
    t.date   "due_date"
  end

  create_table "statuses", :force => true do |t|
    t.integer "project_id"
    t.string  "description"
    t.date    "date"
  end

  create_table "tasks", :force => true do |t|
    t.integer "milestone_id"
    t.string  "description"
    t.integer "user_id"
    t.string  "status"
    t.date    "date_created"
    t.date    "due_date"
    t.string  "complete"
    t.date    "date_completed"
    t.integer "project_id"
  end

  create_table "user_statuses", :force => true do |t|
    t.integer "user_id"
    t.string  "description"
    t.date    "date_created"
  end

  create_table "users", :force => true do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "image_url"
    t.date   "birthday"
    t.string "home"
    t.string "bio"
  end

end
