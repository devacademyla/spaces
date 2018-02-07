class CreateOutputDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :output_details do |t|
      t.date :output_date
      t.integer :quantity
      t.references :warehouse, foreign_key: true

      t.timestamps
    end
  end
end
