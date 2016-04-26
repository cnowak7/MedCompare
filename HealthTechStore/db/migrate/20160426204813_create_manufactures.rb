class CreateManufactures < ActiveRecord::Migration
  def change
    create_table :manufactures do |t|
      t.integer :ManufactureID
      t.string :Manufacture
      t.string :Name
      t.string :Manufacture
      t.string :Email
      t.string :Mnaufacture
      t.string :Phone
      t.integer :Number
      t.string :Manufacture
      t.string :Location

      t.timestamps null: false
    end
  end
end
