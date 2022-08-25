ActiveRecord::Schema.define(version: 2022_08_25_125902) do

  create_table "outputs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
