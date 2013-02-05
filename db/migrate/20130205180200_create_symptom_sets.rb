class CreateSymptomSets < ActiveRecord::Migration
  def change
    create_table :symptom_sets do |t|
      t.integer :user_id, :null => false

      t.timestamps
    end
    add_index :symptom_sets, :user_id
  end
end
