class AddIndexToMetricsName < ActiveRecord::Migration
  def change
    add_index :metrics, :name, unique: true
  end
end
