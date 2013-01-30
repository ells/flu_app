class CreateSymptomSets < ActiveRecord::Migration
  def self.up
    create_table :symptom_sets do |t|
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :symptom_sets
  end
end
