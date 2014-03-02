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

ActiveRecord::Schema.define(version: 20140223125400) do

  create_table "attendances", force: true do |t|
    t.integer  "lecture_id"
    t.integer  "user_id"
    t.boolean  "present"
    t.boolean  "excused"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_enrollments", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "enrollment_type"
    t.string   "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.integer  "lecture_id"
    t.integer  "course_id"
    t.integer  "user_id"
    t.integer  "interval"
    t.string   "feedback"
    t.integer  "engaged"
    t.integer  "bored"
    t.integer  "confused"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "latest_feedbacks", force: true do |t|
    t.integer  "user_id"
    t.integer  "lecture_id"
    t.string   "feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.string   "title"
    t.integer  "course_id"
    t.date     "date"
    t.text     "info"
    t.integer  "total_students"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "lecture_id"
    t.integer  "user_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.string   "type"
    t.integer  "course_id"
    t.integer  "lecture_id"
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_responses", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.string   "type"
    t.text     "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "lecture_id"
    t.integer  "user_id"
    t.string   "type"
    t.text     "post"
    t.integer  "views"
    t.integer  "responses"
    t.integer  "student_likes"
    t.integer  "instructor_likes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quiz_answers", force: true do |t|
    t.integer  "user_id"
    t.integer  "quiz_question_id"
    t.string   "type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quiz_questions", force: true do |t|
    t.integer  "quiz_id"
    t.string   "type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "lecture_id"
    t.integer  "course_id"
    t.boolean  "timed"
    t.date     "end_time"
    t.date     "start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.boolean  "email_verified"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
