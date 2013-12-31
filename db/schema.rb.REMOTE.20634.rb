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

ActiveRecord::Schema.define(version: 20131231042832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drinkabilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "easinesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedback_ratings", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: true do |t|
    t.integer  "recipe_id"
    t.text     "comment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "easiness"
    t.float    "rating"
    t.integer  "taste_id"
    t.integer  "drinkability_id"
    t.integer  "easiness_id"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fridge_ingredients", force: true do |t|
    t.integer  "user_id"
    t.integer  "ingredient_id"
    t.string   "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "fridges", force: true do |t|
    t.integer  "user_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "identities", force: true do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "token"
    t.string   "secret"
    t.datetime "expires_at"
    t.string   "email"
    t.string   "image"
    t.string   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipe_ingredients", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.string   "quantity"
    t.string   "unit"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "recipe_loopers", force: true do |t|
    t.integer  "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.text     "instruction"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id"
    t.integer  "recipe_looper_id", default: 1
    t.string   "drinktype"
  end

  create_table "tastes", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oath_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end