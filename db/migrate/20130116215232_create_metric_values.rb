class CreateMetricValues < ActiveRecord::Migration
  def change
    create_table :metric_values do |t|
      t.integer :value

      t.timestamps
    end
  end
end
