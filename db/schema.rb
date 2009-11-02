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

ActiveRecord::Schema.define(:version => 20091102091052) do

  create_table "content_element_htmls", :force => true do |t|
    t.integer  "content_element_id"
    t.text     "html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_element_images", :force => true do |t|
    t.integer  "content_element_id"
    t.string   "image_url"
    t.string   "image_position"
    t.string   "image_information"
    t.string   "image_alternative_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_element_texts", :force => true do |t|
    t.integer  "content_element_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_elements", :force => true do |t|
    t.integer  "page_id"
    t.string   "element_type", :default => "ContentElement"
    t.string   "header"
    t.string   "header_type"
    t.datetime "starttime"
    t.datetime "endtime"
    t.integer  "sort",         :default => 0
    t.boolean  "hidden",       :default => true
    t.integer  "column"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tags"
    t.integer  "element_id"
    t.datetime "deleted_at"
    t.string   "ancestry"
  end

  add_index "content_elements", ["ancestry"], :name => "index_content_elements_on_ancestry"

  create_table "notices", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "text"
    t.string   "element_type"
    t.integer  "element_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.integer  "parent_id"
    t.datetime "starttime"
    t.datetime "endtime"
    t.integer  "sorting"
    t.boolean  "hidden",           :default => true
    t.boolean  "hidden_in_menu",   :default => false
    t.string   "subtitle"
    t.string   "navigation_title"
    t.text     "description"
    t.text     "abstract"
    t.string   "author"
    t.string   "author_email"
    t.string   "target"
    t.string   "type",             :default => "ContentPage"
    t.integer  "shortcut_page_id"
    t.string   "shortcut_mode",    :default => "first_subpage"
    t.string   "ext_url"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "ancestry"
  end

  add_index "pages", ["ancestry"], :name => "index_pages_on_ancestry"

  create_table "permission_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "permission_group_id"
  end

  create_table "permissions_user_groups", :id => false, :force => true do |t|
    t.integer "permission_id"
    t.integer "user_group_id"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups_users", :id => false, :force => true do |t|
    t.integer "user_group_id"
    t.integer "user_id"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "surname"
    t.string   "name"
    t.string   "email"
    t.string   "last_login_ip"
    t.datetime "last_login_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "persistence_token",                   :null => false
    t.string   "current_login_ip"
    t.datetime "current_login_at"
    t.string   "backend_language",  :default => "en"
    t.datetime "deleted_at"
  end

end
