class AddIndexToSymptomsName < ActiveRecord::Migration
  def change
    add_index :symptoms, :name, unique: true
  end
end
