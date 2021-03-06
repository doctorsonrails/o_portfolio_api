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

ActiveRecord::Schema.define(:version => 20130427212603) do

  create_table "assessments", :force => true do |t|
    t.string   "type",                        :null => false
    t.integer  "trainee_id",                  :null => false
    t.datetime "date",                        :null => false
    t.string   "assessor_name"
    t.string   "assessor_position"
    t.string   "assessor_email"
    t.string   "clinical_setting"
    t.string   "clinical_problem_categories"
    t.string   "focus_of_encounter"
    t.text     "case_summary"
    t.text     "positive_areas"
    t.text     "development_areas"
    t.text     "comments"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "entries", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.text     "reflection"
    t.datetime "occurred_at"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.decimal  "image_latitude",     :precision => 15, :scale => 10
    t.decimal  "image_longitude",    :precision => 15, :scale => 10
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
