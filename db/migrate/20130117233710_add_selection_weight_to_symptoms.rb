class AddSelectionWeightToSymptoms < ActiveRecord::Migration
  def change
    add_column :symptoms, :selection_weight, :float, default: 1.0
  end
end
