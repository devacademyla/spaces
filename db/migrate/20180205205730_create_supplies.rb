class CreateSupplies < ActiveRecord::Migration[5.1]
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.string :color
      t.string :presentation
      t.string :category
      t.string :sub_category
      t.integer :status
      t.integer :stock
      t.integer :stock_minimun
      t.integer :stock_reposition
      t.string :note

      t.timestamps
    end
  end
end
