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

ActiveRecord::Schema.define(version: 2022_05_02_183323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "graphic_cards", force: :cascade do |t|
    t.string "sku"
    t.string "brand"
    t.text "tag"
    t.integer "memory_interface"
    t.integer "memory_size"
    t.string "gpu_series"
    t.string "memory_type"
    t.integer "warranty"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "sku"
    t.string "brand"
    t.text "tag"
    t.string "socket_type"
    t.string "ram_type"
    t.string "chipset_type"
    t.integer "max_ram_support"
    t.integer "warranty"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "power_supplies", force: :cascade do |t|
    t.string "sku"
    t.string "brand"
    t.text "tag"
    t.integer "wattage"
    t.integer "energy_conversion_efficiency"
    t.integer "warranty"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "processors", force: :cascade do |t|
    t.string "sku"
    t.string "brand"
    t.text "tag"
    t.string "processor_series"
    t.string "socket_type"
    t.integer "cores"
    t.integer "threads"
    t.float "base_frequency"
    t.integer "warranty"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rams", force: :cascade do |t|
    t.string "sku"
    t.string "brand"
    t.text "tag"
    t.string "memory_series"
    t.string "memory_type"
    t.string "size"
    t.integer "speed"
    t.integer "warranty"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ssds", force: :cascade do |t|
    t.string "sku"
    t.string "brand"
    t.text "tag"
    t.string "interface"
    t.string "form_factor"
    t.integer "capacity"
    t.integer "read_speed"
    t.integer "write_speed"
    t.integer "warranty"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
