class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouses do |t|
      t.references :space, foreign_key: true
      t.references :supply, foreign_key: true

      t.timestamps
    end
  end
end
