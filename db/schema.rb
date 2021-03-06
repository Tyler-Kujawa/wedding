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

ActiveRecord::Schema.define(version: 20160509165247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "header_image_file_name"
    t.string   "header_image_content_type"
    t.integer  "header_image_file_size"
    t.datetime "header_image_updated_at"
    t.text     "content"
    t.string   "subtitle"
    t.text     "summary"
  end

  create_table "groups", force: true do |t|
    t.text     "comments"
    t.string   "email"
    t.boolean  "attending"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guest_count"
  end

  create_table "issues", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.date     "publication_date"
    t.datetime "review_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.text     "summary"
    t.integer  "issue_number"
    t.integer  "rating"
  end

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rsvps", force: true do |t|
    t.string   "name"
    t.string   "meal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guest_name"
    t.string   "guest_meal"
    t.integer  "group_id"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
  end

end
