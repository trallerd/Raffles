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

ActiveRecord::Schema.define(version: 2021_05_26_184433) do

  create_table "dashboards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dashboards_on_user_id"
  end

  create_table "prizes", force: :cascade do |t|
    t.integer "raffle_id", null: false
    t.string "description"
    t.integer "placing"
    t.integer "ticket_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["raffle_id"], name: "index_prizes_on_raffle_id"
    t.index ["ticket_id"], name: "index_prizes_on_ticket_id"
  end

  create_table "raffles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "type_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "probable_draw_date"
    t.datetime "start_date_sale"
    t.datetime "end_date_sale"
    t.datetime "draw_date"
    t.float "ticket_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id"], name: "index_raffles_on_type_id"
    t.index ["user_id"], name: "index_raffles_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "raffle_id", null: false
    t.integer "user_id"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["raffle_id"], name: "index_tickets_on_raffle_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "description"
    t.integer "inicial_number"
    t.integer "step"
    t.integer "ticket_quantities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "photo"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dashboards", "users"
  add_foreign_key "prizes", "raffles"
  add_foreign_key "prizes", "tickets"
  add_foreign_key "raffles", "types"
  add_foreign_key "raffles", "users"
  add_foreign_key "tickets", "raffles"
  add_foreign_key "tickets", "users"
end
