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

ActiveRecord::Schema.define(:version => 20130523185834) do

  create_table "art_collections", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "artists", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "phone",         :null => false
    t.string   "email",         :null => false
    t.string   "address_1",     :null => false
    t.string   "address_2"
    t.string   "city",          :null => false
    t.string   "state"
    t.integer  "zip"
    t.string   "country",       :null => false
    t.string   "birth_city",    :null => false
    t.string   "birth_country", :null => false
    t.string   "art_style",     :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "artworks", :force => true do |t|
    t.string   "title",             :null => false
    t.integer  "artist_id",         :null => false
    t.integer  "art_collection_id"
    t.datetime "creation_date",     :null => false
    t.datetime "on_sale_date",      :null => false
    t.float    "price",             :null => false
    t.string   "art_type",          :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "phone",      :null => false
    t.string   "email",      :null => false
    t.string   "address_1",  :null => false
    t.string   "address_2"
    t.string   "city",       :null => false
    t.string   "state"
    t.integer  "zip"
    t.string   "country",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "favorite_collections", :force => true do |t|
    t.integer  "customer_id",       :null => false
    t.integer  "art_collection_id", :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "customer_id", :null => false
    t.integer  "artwork_id",  :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
