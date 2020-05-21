# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_21_172202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Pokemons_Trainers", id: false, force: :cascade do |t|
    t.bigint "Pokemon_id", null: false
    t.bigint "Trainer_id", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "base_experience"
    t.string "main_type"
    t.string "main_ability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "home_region"
    t.string "status"
    t.integer "wins"
    t.integer "losses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end