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

ActiveRecord::Schema.define(version: 20210617133102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.integer "q_id"
    t.string "question"
    t.string "description"
    t.string "answer_a"
    t.string "answer_b"
    t.string "answer_c"
    t.string "answer_d"
    t.string "answer_e"
    t.string "answer_f"
    t.boolean "answer_a_correct"
    t.boolean "answer_b_correct"
    t.boolean "answer_c_correct"
    t.boolean "answer_d_correct"
    t.boolean "answer_e_correct"
    t.boolean "answer_f_correct"
    t.string "explanation"
    t.string "tip"
    t.string "tags"
    t.string "category"
    t.string "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
