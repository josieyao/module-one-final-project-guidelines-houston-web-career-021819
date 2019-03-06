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

ActiveRecord::Schema.define(version: 20190306191245) do

  create_table "friendhobbies", force: :cascade do |t|
    t.integer "friend_id"
    t.integer "hobby_id"
    t.index ["friend_id"], name: "index_friendhobbies_on_friend_id"
    t.index ["hobby_id"], name: "index_friendhobbies_on_hobby_id"
  end

  create_table "friends", force: :cascade do |t|
    t.string "name"
    t.date   "dob"
    t.string "email"
    t.string "password"
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "hobby"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "senior_id"
    t.integer "friend_id"
    t.integer "hobby_id"
    t.index ["friend_id"], name: "index_matches_on_friend_id"
    t.index ["hobby_id"], name: "index_matches_on_hobby_id"
    t.index ["senior_id"], name: "index_matches_on_senior_id"
  end

  create_table "seniorhobbies", force: :cascade do |t|
    t.integer "senior_id"
    t.integer "hobby_id"
    t.index ["hobby_id"], name: "index_seniorhobbies_on_hobby_id"
    t.index ["senior_id"], name: "index_seniorhobbies_on_senior_id"
  end

  create_table "seniors", force: :cascade do |t|
    t.string "name"
    t.date   "dob"
    t.string "email"
    t.string "password"
  end

end
