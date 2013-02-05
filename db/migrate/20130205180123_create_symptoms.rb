class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.integer :symptom_set_id
      t.integer :duration

      t.timestamps
    end
    
    add_index :symptoms, :symptom_set_id
  end
end
