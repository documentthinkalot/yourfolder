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

ActiveRecord::Schema.define(version: 20180104024836) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
    t.text     "body",       limit: 65535
    t.integer  "post_id",    limit: 4
  end

  create_table "filetype2s", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "filetype_id",    limit: 4
    t.string   "filetype2_name", limit: 255
  end

  create_table "filetypes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "industries", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "post_id",    limit: 4
    t.integer  "user_id",    limit: 4
  end

  create_table "occupations", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "places", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "body",            limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "user_id",         limit: 255
    t.string   "category_id",     limit: 255
    t.integer  "filetype_id",     limit: 4
    t.integer  "subcategory_id",  limit: 4
    t.integer  "filetype2_id",    limit: 4
    t.integer  "sub2category_id", limit: 4
    t.string   "file",            limit: 255
    t.integer  "sub3category_id", limit: 4
    t.integer  "sub4category_id", limit: 4
    t.integer  "sub5category_id", limit: 4
    t.integer  "sub6category_id", limit: 4
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",     limit: 4
    t.text     "body",        limit: 65535
    t.string   "title",       limit: 255
    t.integer  "category_id", limit: 4
  end

  create_table "responses", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "body",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "request_id", limit: 4
  end

  create_table "sub2categories", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "sub2category_name", limit: 255
    t.integer  "subcategory_id",    limit: 4
  end

  create_table "sub3categories", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "sub2category_id",   limit: 4
    t.string   "sub3category_name", limit: 255
  end

  create_table "sub4categories", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "sub3category_id",   limit: 4
    t.string   "sub4category_name", limit: 255
  end

  create_table "sub5categories", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "sub4category_id",   limit: 4
    t.string   "sub5category_name", limit: 255
  end

  create_table "sub6categories", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "sub5category_id",   limit: 4
    t.string   "sub6category_name", limit: 255
  end

  create_table "subcategories", force: :cascade do |t|
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "category_id",      limit: 4
    t.string   "subcategory_name", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "nickname",               limit: 255
    t.string   "sex",                    limit: 255
    t.string   "company",                limit: 255
    t.string   "circumstances",          limit: 255
    t.string   "position",               limit: 255
    t.integer  "age",                    limit: 4
    t.string   "number_of_employees",    limit: 255
    t.integer  "place_id",               limit: 4
    t.integer  "industry_id",            limit: 4
    t.integer  "occupation_id",          limit: 4
    t.text     "biography",              limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
