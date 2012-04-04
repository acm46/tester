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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120404040654) do

  create_table "foods", :force => true do |t|
    t.float    "potassium"
    t.float    "beta_crypt"
    t.float    "calcium"
    t.float    "panto_acid"
    t.float    "iron"
    t.float    "sodium"
    t.float    "fa_mono"
    t.float    "vivit_d_iu"
    t.float    "copper"
    t.text     "gmwt_desc2"
    t.float    "ash"
    t.float    "niacin"
    t.float    "folic_acid"
    t.float    "cholestrl"
    t.float    "food_folate"
    t.float    "fa_sat"
    t.float    "energ_kcal"
    t.float    "vit_b6"
    t.float    "magnesium"
    t.float    "choline_tot"
    t.text     "gmwt_desc1"
    t.float    "vit_c"
    t.float    "lycopene"
    t.float    "ndb_no"
    t.float    "lut_zea"
    t.float    "refuse_pct"
    t.float    "riboflavin"
    t.float    "fiber_td"
    t.float    "water"
    t.float    "vit_b12"
    t.float    "folate_tot"
    t.float    "phosphorus"
    t.float    "sugar_tot"
    t.text     "food_name"
    t.float    "alpha_carot"
    t.float    "manganese"
    t.float    "gmwt_1"
    t.float    "carbohydrt"
    t.float    "zinc"
    t.float    "retinol"
    t.float    "gmwt_2"
    t.float    "folate_dfe"
    t.float    "fa_poly"
    t.float    "vit_a_rae"
    t.float    "selenium"
    t.float    "protein"
    t.float    "lipid_tot"
    t.float    "vit_k"
    t.float    "thiamin"
    t.float    "vit_a_iu"
    t.float    "beta_carot"
    t.float    "vit_d_mcg"
    t.float    "vit_e"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "foods_users", :id => false, :force => true do |t|
    t.integer "food_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "num_foods"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
