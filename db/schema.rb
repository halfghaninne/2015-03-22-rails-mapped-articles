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

ActiveRecord::Schema.define(:version => 20150408185017) do

  create_table "articles", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "title"
    t.text     "body"
    t.integer  "author_id"
    t.boolean  "published"
  end

  add_index "articles", ["author_id"], :name => "index_articles_on_author_id"

  create_table "authors", :force => true do |t|
    t.string "name"
    t.text   "auth_info"
  end

  create_table "locations", :force => true do |t|
    t.text    "alias"
    t.text    "address"
    t.decimal "latitude"
    t.decimal "longitude"
  end

  create_table "pins", :force => true do |t|
    t.integer "article_id"
    t.integer "location_id"
  end

  create_table "users", :force => true do |t|
    t.text    "username"
    t.text    "email"
    t.text    "password"
    t.boolean "is_admin"
  end

  add_index "users", ["username", "email"], :name => "index_users_on_username_and_email", :unique => true

  add_foreign_key "articles", "authors", name: "articles_author_id_fk"

end
