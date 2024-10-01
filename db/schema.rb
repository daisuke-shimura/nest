# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_09_30_143607) do
  create_table "books", force: :cascade do |t|#日程
    t.string "title"#要らん
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "start"#要らん
    t.string "finish"#要らん
    t.integer "user_id"#要らん
    t.date "start_i"
    t.date "finish_i"
  end

  create_table "comments", force: :cascade do |t|#コメント（備考）
    t.text "comment"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"#要らん
    t.integer "user_id"
  end

  create_table "fris", force: :cascade do |t|#祝日用
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holidays", force: :cascade do |t|#ミスった
    t.integer "book_id"
    t.boolean "trigger", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "momments", force: :cascade do |t|#ミスった
    t.integer "momment_id"
    t.string "momment_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mons", force: :cascade do |t|#祝日用
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sats", force: :cascade do |t|#祝日用
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thus", force: :cascade do |t|#祝日用
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tues", force: :cascade do |t|#祝日用
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weds", force: :cascade do |t|#祝日用
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|#要らん
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
