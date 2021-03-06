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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180209063811) do
=======
ActiveRecord::Schema.define(version: 20180201102838) do
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72

  create_table "followships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
=======
    t.index ["user_id", "following_id"], name: "index_followships_on_user_id_and_following_id"
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
  end

  create_table "replies", force: :cascade do |t|
    t.string "comment"
=======
    t.index ["user_id", "tweet_id"], name: "index_likes_on_user_id_and_tweet_id"
  end

  create_table "replies", force: :cascade do |t|
    t.text "comment"
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
    t.integer "tweet_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
=======
    t.index ["tweet_id", "user_id"], name: "index_replies_on_tweet_id_and_user_id"
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  end

  create_table "tweets", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
<<<<<<< HEAD
    t.integer "replies_count"
    t.integer "likes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "followers_count", default: 0
    t.integer "tweets_count", default: 0
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "replies_count", default: 0
    t.integer "likes_count", default: 0
    t.index ["user_id"], name: "index_tweets_on_user_id"
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
<<<<<<< HEAD
    t.string "role"
    t.string "name"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "introduction"
    t.integer "followers_count"
    t.integer "likes_count"
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.string "avatar"
    t.text "introduction"
    t.integer "likes_count", default: 0
    t.string "role", default: "normal"
    t.integer "followers_count", default: 0
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
