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

ActiveRecord::Schema.define(version: 2019_02_01_131224) do

  create_table "clients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "run"
    t.string "name"
    t.string "lastname"
    t.string "mother_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["run"], name: "index_clients_on_run", unique: true
  end

  create_table "deeds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.datetime "updated_at", null: false
    t.bigint "problem_id"
    t.bigint "employee_id"
    t.date "deed_date"
    t.index ["employee_id"], name: "index_deeds_on_employee_id"
    t.index ["problem_id"], name: "index_deeds_on_problem_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "run"
    t.string "name"
    t.string "lastname"
    t.string "mother_name"
    t.string "charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["run"], name: "index_employees_on_run", unique: true
  end

  create_table "problems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "note"
    t.date "finished_at"
    t.boolean "finished"
    t.string "document_type"
    t.integer "document_number"
    t.date "buy_at"
    t.integer "product_code"
    t.datetime "updated_at", null: false
    t.bigint "client_id"
    t.bigint "employee_id"
    t.index ["client_id"], name: "index_problems_on_client_id"
    t.index ["employee_id"], name: "index_problems_on_employee_id"
  end

  add_foreign_key "deeds", "employees"
  add_foreign_key "deeds", "problems"
  add_foreign_key "problems", "clients"
  add_foreign_key "problems", "employees"
end
