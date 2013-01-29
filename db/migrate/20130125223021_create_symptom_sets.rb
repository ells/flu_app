class CreateSymptomSets < ActiveRecord::Migration
  def change
    create_table :symptom_sets do |t|
      t.integer :user_id

      t.timestamps
    end
     add_index :symptom_sets, [:user_id, :created_at]
  end
end
