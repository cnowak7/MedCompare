class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :search_tags
      t.string :email
      t.string :phone_number
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
