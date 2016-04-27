class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :category_id
      t.integer :vendor_id
      t.integer :manufacturer_id
      t.float :sale_price
      t.float :purchase_price
      t.integer :quantity_on_hand

      t.timestamps null: false
    end
  end
end
