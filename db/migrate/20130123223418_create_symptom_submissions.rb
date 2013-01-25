class CreateSymptomSubmissions < ActiveRecord::Migration
  def change
    create_table :symptom_submissions do |t|
      t.integer :user_id, :null => false

      t.timestamps
    end
    add_index :symptom_submissions, [:user_id, :created_at]
  end
end
