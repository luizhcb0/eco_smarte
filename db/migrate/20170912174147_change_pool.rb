class ChangePool < ActiveRecord::Migration[5.0]
  def change
    change_table :pools do |t|
      t.integer :filter_size_unit, null: true
    end
  end
end
