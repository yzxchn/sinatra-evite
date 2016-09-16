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

ActiveRecord::Schema.define(version: 20160915180900) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date   "date"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date   "birthday"
    t.string "gender"
    t.string "zipcode"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "person_id"
    t.string "event_id"
    t.string "status"
  end

end
