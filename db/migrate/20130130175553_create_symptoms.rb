class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.integer :symptom_set_id
      t.string :name

      t.timestamps
    end
  end
end
