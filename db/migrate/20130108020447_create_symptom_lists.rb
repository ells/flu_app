class CreateSymptomLists < ActiveRecord::Migration
  def change
    create_table :symptom_lists do |t|
      t.integer :symptom_id
      t.integer :symptom_metric
      t.integer :user_id
      t.string :geolocation

      t.timestamps
    end
    add_index :symptom_lists, [:user_id, :created_at]

  end
end
