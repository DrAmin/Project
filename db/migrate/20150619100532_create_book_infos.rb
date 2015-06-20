class CreateBookInfos < ActiveRecord::Migration
  def up
    create_table :book_infos do |t|
    t.string  "ISBN", limit: 13, null: false	
    t.string  "Book_Name",     limit: 30,  null: false
    t.string  "Author",        limit: 20,  null: false
    t.string  "Pub_ID",        limit: 20,  null: false
    t.string  "Language",		limit: 20,  null: false
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
      t.timestamps
    end
  add_index "book_infos", ["College_ID"], name: "College_ID", using: :btree
  add_index "book_infos", ["Course_ID"], name: "Course_ID", using: :btree
  add_index "book_infos", ["Pub_ID"], name: "Pub_ID", using: :btree

  end
  def down
  		drop_table :book_infos
  end
end
