class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.boolean :presence
      t.integer :duration

      t.timestamps
    end
  end
end
