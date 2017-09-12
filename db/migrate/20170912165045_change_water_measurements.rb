class ChangeWaterMeasurements < ActiveRecord::Migration[5.0]
  def change
    change_table :waters do |t|
      t.remove :chlorine
      t.float :free_chlorine, null: true
      t.float :total_chlorine, null: true
    end
  end
end
