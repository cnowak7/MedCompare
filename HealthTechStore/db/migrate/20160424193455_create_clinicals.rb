class CreateClinicals < ActiveRecord::Migration
  def change
    create_table :clinicals do |t|
      t.string :ClinicalID
      t.string :Clinical
      t.string :Name
      t.string :Clinical
      t.string :Email
      t.string :Clinical
      t.string :Phone
      t.integer :Number
      t.string :Clinical
      t.decimal :Rating

      t.timestamps null: false
    end
  end
end
