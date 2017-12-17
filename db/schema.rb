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

ActiveRecord::Schema.define(version: 20171217053400) do

  create_table "links", force: :cascade do |t|
    t.string "titile"
    t.string "description"
    t.string "favicon"
    t.string "image"
    t.string "announce_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.integer "user_id"
    t.integer "service_time_category_id"
    t.integer "service_type_category_id"
    t.integer "word_content_category_id"
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "links_service_times", force: :cascade do |t|
    t.integer "link_id"
    t.integer "service_time_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_id"], name: "index_links_service_times_on_link_id"
    t.index ["service_time_category_id"], name: "index_links_service_times_on_service_time_category_id"
  end

  create_table "links_service_types", force: :cascade do |t|
    t.integer "link_id"
    t.integer "service_type_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_id"], name: "index_links_service_types_on_link_id"
    t.index ["service_type_category_id"], name: "index_links_service_types_on_service_type_category_id"
  end

  create_table "links_word_contents", force: :cascade do |t|
    t.integer "link_id"
    t.integer "word_content_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_id"], name: "index_links_word_contents_on_link_id"
    t.index ["word_content_category_id"], name: "index_links_word_contents_on_word_content_category_id"
  end

  create_table "service_time_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "link_id"
  end

  create_table "service_type_categories", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "link_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "date_of_birth"
    t.boolean "is_female", default: false
    t.boolean "admin"
    t.boolean "certification"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "word_content_categories", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "link_id"
  end

end
