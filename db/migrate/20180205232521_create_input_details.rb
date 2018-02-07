class CreateInputDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :input_details do |t|
      t.date :input_date
      t.integer :quantity
      t.references :warehouse, foreign_key: true

      t.timestamps
    end
  end
end
