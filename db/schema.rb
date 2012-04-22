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

ActiveRecord::Schema.define(:version => 20120422190944) do

  create_table "about_pages", :force => true do |t|
    t.text     "text"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
  end

  create_table "agendas", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "current"
    t.text     "pitch"
  end

  create_table "articles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
    t.string   "title"
    t.string   "byline"
    t.integer  "agenda_id"
    t.integer  "user_id"
    t.string   "kind"
    t.boolean  "is_original"
    t.string   "link"
    t.text     "caption1"
    t.text     "caption0"
    t.text     "caption2"
    t.string   "image0_file_name"
    t.string   "image0_content_type"
    t.integer  "image0_file_size"
    t.datetime "image0_updated_at"
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "byline"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "agenda_id"
  end

  create_table "cms_pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "front_pages", :force => true do |t|
    t.text     "text"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pages", :force => true do |t|
    t.text     "text"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.text     "text"
    t.string   "title"
    t.string   "category"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blog_id"
    t.boolean  "is_original"
    t.string   "byline"
    t.string   "link"
    t.text     "caption0"
    t.string   "image0_file_name"
    t.string   "image0_content_type"
    t.integer  "image0_file_size"
    t.datetime "image0_updated_at"
    t.text     "caption1"
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.text     "caption2"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
  end

  create_table "talk", :force => true do |t|
    t.integer  "agenda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
