class CreatePools < ActiveRecord::Migration[5.0]
  def change
    create_table :pools do |t|
      t.belongs_to :user, null: false, index: true
      t.string :name, null: false
      t.string :address, null: true
      t.string :city, null: true
      t.string :zip, null: true
      t.string :state, null: true
      t.string :model, null: true
      t.integer :volume, null: true
      t.string :volume_unit, null: true
      t.string :pump_size, null: true
      t.string :filter_size, null: true
      t.string :filter_type, null: true
      t.string :vacuum_brand, null: true
      t.boolean :negative_edge, null: true
      t.boolean :attached_spa, null: true
      t.string :additional_water_features, null: true
      t.timestamps
    end
    add_foreign_key :pools, :users, on_delete: :cascade
  end
end