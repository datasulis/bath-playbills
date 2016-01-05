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

ActiveRecord::Schema.define(version: 20150704131805) do

  create_table "bills", force: :cascade do |t|
    t.date     "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "notes"
    t.string   "slug"
    t.string   "catalogue_url"
    t.string   "catalogue_id"
    t.string   "pdf"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "page_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "books", ["slug"], name: "index_books_on_slug", unique: true

  create_table "pages", force: :cascade do |t|
    t.integer  "book_id"
    t.string   "image_file_name"
    t.integer  "page_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "bill_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "profile_image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
