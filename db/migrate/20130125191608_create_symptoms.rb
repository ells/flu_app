class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.boolean :presence, :default => true
      t.integer :intensity, :default => 1
      t.integer :duration, :default => 1
      t.integer :user_id
      
      t.timestamps
    end
    add_index :symptoms, [:user_id, :created_at]
  end
end
