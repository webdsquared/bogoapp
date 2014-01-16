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

ActiveRecord::Schema.define(version: 20140115055527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "start_time"
    t.string   "arrival"
    t.string   "opponent"
    t.string   "home_away"
    t.string   "game_type"
    t.string   "location"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "event_type"
    t.integer  "team_id"
  end

  create_table "games", force: true do |t|
    t.date     "date"
    t.string   "start_time"
    t.string   "arrival"
    t.string   "opponent"
    t.string   "home_away"
    t.string   "game_type"
    t.string   "location"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "memberships", force: true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "publish_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "private",    default: false
    t.integer  "user_id"
    t.integer  "team_id"
  end

  create_table "practices", force: true do |t|
    t.date     "date"
    t.string   "start_time"
    t.string   "arrival"
    t.string   "location"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "profiles", force: true do |t|
    t.string   "player_first_name"
    t.string   "player_last_name"
    t.string   "player_number"
    t.string   "player_favorite_team"
    t.string   "player_favorite_player"
    t.string   "player_favorite_subject"
    t.string   "player_career"
    t.string   "player_favorite_song"
    t.string   "player_favorite_book"
    t.string   "player_favorite_movie"
    t.string   "player_favorite_food"
    t.string   "player_nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_image"
    t.string   "image"
    t.integer  "team_id"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "slug"
  end

  add_index "teams", ["slug"], name: "index_teams_on_slug", using: :btree

  create_table "teams_users", id: false, force: true do |t|
    t.integer "team_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.boolean  "admin",                  default: false
    t.boolean  "guest"
    t.integer  "guest_user_id"
    t.boolean  "super_admin",            default: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
