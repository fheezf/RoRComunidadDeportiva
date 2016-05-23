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

ActiveRecord::Schema.define(version: 20150103132102) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.string   "summary"
    t.integer  "user_id"
    t.integer  "local_team_id"
    t.integer  "foreign_team_id"
    t.string   "result"
    t.string   "tipe"
  end

  create_table "articles_locations", id: false, force: true do |t|
    t.integer "article_id"
    t.integer "location_id"
  end

  add_index "articles_locations", ["article_id"], name: "index_articles_locations_on_article_id"
  add_index "articles_locations", ["location_id"], name: "index_articles_locations_on_location_id"

  create_table "clashes", force: true do |t|
    t.integer  "local_team_id"
    t.integer  "foreign_team_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "competition_id"
    t.integer  "local_score"
    t.integer  "foreign_score"
  end

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "province"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "competition_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "location_id"
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hashed_password"
    t.string   "role"
  end

  create_table "videos", force: true do |t|
    t.string   "name"
    t.integer  "article_id"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
