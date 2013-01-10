class CreateDiseases < ActiveRecord::Migration
  def self.up
    create_table :diseases do |t|
      t.string :name
      t.timestamps
    end
    add_index :diseases, :name, unique: true
  end

  def self.down
    drop_table :diseases
  end
end
