class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.belongs_to :symptomable, polymorphic: true

      t.timestamps
    end
    add_index :symptoms, [:symptomable_id, :symptomable_type]
    add_index :symptoms, :name, unique=>true 
  end
end
