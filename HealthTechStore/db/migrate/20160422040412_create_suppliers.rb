class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :companyName
      t.string :pointOfContact
      t.string :website
      t.string :phone

      t.timestamps null: false
    end
  end
end
