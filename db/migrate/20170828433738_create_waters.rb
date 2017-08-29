class CreateWaters < ActiveRecord::Migration[5.0]
  def change
    create_table :waters do |t|
      t.belongs_to :pool, null: false, index: true
      t.date :measurement_date, null: false
      t.float :temperature, null: true
      t.integer :temperature_unit, null: true
      t.float :ph, null: true
      t.float :cuppm, null: true
      t.float :calcium, null: true
      t.float :phosphate, null: true
      t.float :chlorine, null: true
      t.float :oxygen, null: true
      t.timestamps
    end
    add_foreign_key :waters, :pools, on_delete: :cascade
  end
end