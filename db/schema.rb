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

ActiveRecord::Schema.define(:version => 20130123223418) do

  create_table "diseases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "diseases", ["name"], :name => "index_diseases_on_name", :unique => true

  create_table "metric_values", :force => true do |t|
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "metrics", :force => true do |t|
    t.string   "name"
    t.integer  "metricizable_id"
    t.string   "metricizable_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "metrics", ["metricizable_id", "metricizable_type"], :name => "index_metrics_on_metricizable_id_and_metricizable_type"

  create_table "symptom_submissions", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "symptom_submissions", ["user_id", "created_at"], :name => "index_symptom_submissions_on_user_id_and_created_at"

  create_table "symptoms", :force => true do |t|
    t.string   "name"
    t.integer  "symptomable_id"
    t.string   "symptomable_type"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.float    "selection_weight", :default => 1.0
  end

  add_index "symptoms", ["symptomable_id", "symptomable_type"], :name => "index_symptoms_on_symptomable_id_and_symptomable_type"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
