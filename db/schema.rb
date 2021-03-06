# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110418063918) do

  create_table "albums", :force => true do |t|
    t.string   "name",       :limit => 32, :null => false
    t.integer  "user_id",                  :null => false
    t.datetime "created_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "post",       :limit => 32, :null => false
    t.integer  "picture_id",               :null => false
    t.integer  "user_id",                  :null => false
    t.datetime "created_at",               :null => false
  end

  create_table "friends", :force => true do |t|
    t.integer "user1",    :null => false
    t.integer "user2",    :null => false
    t.integer "accepted", :null => false
  end

  create_table "pictures", :force => true do |t|
    t.integer  "album_id"
    t.integer  "user_id"
    t.string   "caption",            :limit => 200
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "todos", :force => true do |t|
    t.string "post", :null => false
    t.string "user"
  end

  create_table "users", :force => true do |t|
    t.string "name",     :limit => 32, :null => false
    t.string "location", :limit => 32
    t.string "sex",      :limit => 1,  :null => false
    t.date   "birthday"
    t.string "email",    :limit => 32, :null => false
    t.string "password", :limit => 32, :null => false
  end

end
