class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.text :content, null: false
      t.integer :description, null: false
      t.timestamps
    end
  end
end
