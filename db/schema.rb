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

ActiveRecord::Schema.define(version: 20150619100532) do

  create_table "admin_info", primary_key: "Username", force: true do |t|
    t.string "Password",       limit: 20, null: false
    t.string "Privillages",    limit: 30, null: false
    t.string "Contact_Number", limit: 12, null: false
  end

  create_table "book_info", primary_key: "ISBN", force: true do |t|
    t.string  "Book_Name",     limit: 30,  null: false
    t.string  "Author",        limit: 20,  null: false
    t.string  "Pub_ID",        limit: 20,  null: false
    t.integer "Current_Stock",             null: false
    t.integer "Minimum_Stock",             null: false
    t.integer "Discount"
    t.string  "Type",          limit: 15,  null: false
    t.integer "Rating"
    t.string  "Book_Img",      limit: 100, null: false
    t.string  "University",    limit: 50,  null: false
    t.integer "Semester",                  null: false
    t.string  "College_ID",    limit: 5,   null: false
    t.string  "Course_ID",     limit: 5,   null: false
    t.string  "Subject",       limit: 20,  null: false
    t.integer "Price",                     null: false
    t.string  "Description",   limit: 100, null: false
  end

  add_index "book_info", ["College_ID"], name: "College_ID", using: :btree
  add_index "book_info", ["Course_ID"], name: "Course_ID", using: :btree
  add_index "book_info", ["Pub_ID"], name: "Pub_ID", using: :btree

  create_table "book_infos", force: true do |t|
    t.string   "ISBN",          limit: 13,  null: false
    t.string   "Book_Name",     limit: 30,  null: false
    t.string   "Author",        limit: 20,  null: false
    t.string   "Pub_ID",        limit: 20,  null: false
    t.string   "Language",      limit: 20,  null: false
    t.integer  "Current_Stock",             null: false
    t.integer  "Minimum_Stock",             null: false
    t.integer  "Discount"
    t.string   "Type",          limit: 15,  null: false
    t.integer  "Rating"
    t.string   "Book_Img",      limit: 100, null: false
    t.string   "University",    limit: 50,  null: false
    t.integer  "Semester",                  null: false
    t.string   "College_ID",    limit: 5,   null: false
    t.string   "Course_ID",     limit: 5,   null: false
    t.string   "Subject",       limit: 20,  null: false
    t.integer  "Price",                     null: false
    t.string   "Description",   limit: 100, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_infos", ["College_ID"], name: "College_ID", using: :btree
  add_index "book_infos", ["Course_ID"], name: "Course_ID", using: :btree
  add_index "book_infos", ["Pub_ID"], name: "Pub_ID", using: :btree

  create_table "college_info", primary_key: "College_ID", force: true do |t|
    t.string "College_Name",    limit: 50, null: false
    t.string "University_Name", limit: 50, null: false
  end

  add_index "college_info", ["College_Name"], name: "College_Name", unique: true, using: :btree

  create_table "course_info", primary_key: "Course_ID", force: true do |t|
    t.string "College_ID",  limit: 5,  null: false
    t.string "Course_Name", limit: 50, null: false
  end

  create_table "invoice", primary_key: "Inv_ID", force: true do |t|
    t.string  "User_Name", limit: 20, null: false
    t.integer "ISBN",                 null: false
    t.integer "Quantity",             null: false
    t.integer "Sub_Total",            null: false
    t.integer "Total",                null: false
  end

  create_table "publisher_info", primary_key: "Pub_ID", force: true do |t|
    t.string  "Pub_Name",         limit: 20,  null: false
    t.string  "Address_Line_1",   limit: 20,  null: false
    t.string  "Address_Line_2",   limit: 20,  null: false
    t.string  "City",             limit: 10,  null: false
    t.string  "State",            limit: 10,  null: false
    t.integer "Pin_Code",                     null: false
    t.string  "Contact_Number_1", limit: 12,  null: false
    t.string  "Contact_Number_2", limit: 12
    t.string  "Publisher_Logo",   limit: 100, null: false
  end

  create_table "sem_info", id: false, force: true do |t|
    t.string  "Course_ID",  limit: 5,  null: false
    t.integer "Sem_Number",            null: false
    t.string  "Sub_ID",     limit: 10, null: false
    t.string  "Sub_Name",   limit: 20, null: false
  end

  create_table "user_info", primary_key: "User_Name", force: true do |t|
    t.string   "Name",             limit: 20, null: false
    t.string   "Password",         limit: 20, null: false
    t.string   "Address_Line_1",   limit: 20, null: false
    t.string   "Address_Line_2",   limit: 20, null: false
    t.string   "City",             limit: 10, null: false
    t.string   "State",            limit: 10, null: false
    t.integer  "Pin_Code",                    null: false
    t.string   "Contact_Number_1", limit: 12, null: false
    t.string   "Contact_Number_2", limit: 12
    t.datetime "DOB",                         null: false
  end

end
