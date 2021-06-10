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

ActiveRecord::Schema.define(version: 2021_06_10_013323) do

  create_table "generations", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "numero"
    t.string "name"
    t.integer "total"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "speattack"
    t.integer "spedefense"
    t.integer "speed"
    t.boolean "legendary"
    t.integer "typeprincipal_id", null: false
    t.integer "typesecondaire_id"
    t.integer "generation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["generation_id"], name: "index_pokemons_on_generation_id"
    t.index ["typeprincipal_id"], name: "index_pokemons_on_typeprincipal_id"
    t.index ["typesecondaire_id"], name: "index_pokemons_on_typesecondaire_id"
  end

  create_table "typeprincipals", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typesecondaires", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pokemons", "generations"
  add_foreign_key "pokemons", "typeprincipals"
  add_foreign_key "pokemons", "typesecondaires"
end
