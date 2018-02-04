class CreateAssetSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_suppliers do |t|
      t.references :asset, foreign_key: true
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
