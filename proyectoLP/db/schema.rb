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

ActiveRecord::Schema.define(version: 20140215191143) do

  create_table "estudiante", force: true do |t|
    t.string "nombre",           limit: 80,                    null: false
    t.string "apellido_materno", limit: 80
    t.string "apellido_paterno", limit: 80
    t.string "desplegar",        limit: 80
    t.string "sexo",             limit: 10, default: "Hombre", null: false
    t.text   "materias"
  end

  create_table "estudiantes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "politecnicos", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.text     "materia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
