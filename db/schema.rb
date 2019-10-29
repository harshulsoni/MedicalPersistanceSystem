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

ActiveRecord::Schema.define(version: 20191029175814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.text     "mrn"
    t.integer  "age"
    t.integer  "question2"
    t.integer  "question3"
    t.boolean  "question4"
    t.integer  "question51"
    t.integer  "question52"
    t.integer  "question53"
    t.integer  "question54"
    t.integer  "question55"
    t.integer  "question56"
    t.integer  "question6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
