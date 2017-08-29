class CreatePools < ActiveRecord::Migration[5.0]
  def change
    create_table :pools do |t|
      t.belongs_to :user, null: false, index: true
      t.belongs_to :pool_model, null: false, index: true
      t.string :name, null: false
      t.string :address, null: true
      t.string :city, null: true
      t.string :postal_code, null: true
      t.integer :state, null: true
      t.float :volume, null: true
      t.integer :volume_unit, null: true
      t.integer :pump_size, null: true
      t.integer :filter_type, null: true
      t.float :filter_size, null: true
      t.string :vacuum_brand, null: true
      t.boolean :negative_edge, null: true
      t.boolean :attached_spa, null: true
      t.string :additional_water_features, null: true
      t.timestamps
    end
    add_foreign_key :pools, :users, on_delete: :cascade
    add_foreign_key :pools, :pool_models, on_delete: :cascade
  end
end