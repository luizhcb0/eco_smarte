class CreateContactMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_messages do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :website, null: true, default: ""
      t.string :subject, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
