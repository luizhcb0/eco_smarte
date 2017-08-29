class CreatePoolModels < ActiveRecord::Migration[5.0]
  def change
    create_table :pool_models do |t|
      t.string :description, null: false
      t.timestamps
    end
  end
end
