class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.belongs_to :metricizable, polymorphic: true

      t.timestamps
    end
    add_index :metrics, [:metricizable_id, :metricizable_type]
  end
end
