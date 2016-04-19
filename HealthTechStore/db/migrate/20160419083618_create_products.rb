class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :categoryId
      t.integer :manufacturerId
      t.integer :vendorId
      t.float :salePrice
      t.float :purchasePrice
      t.integer :quantityOnHand

      t.timestamps null: false
    end
  end
end
