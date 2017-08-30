class CreateWarrantyMails < ActiveRecord::Migration[5.0]
  def change
    create_table :warranty_mails do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :street_address, null: false
      t.string :street_address_2, null: true
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
      t.string :country, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :model, null: false
      t.string :other, null: true
      t.string :serial, null: false
      t.string :date_purchased, null: false
      t.string :dealership, null: true
      t.timestamps
    end
  end
end