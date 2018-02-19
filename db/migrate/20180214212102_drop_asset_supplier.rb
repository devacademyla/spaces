class DropAssetSupplier < ActiveRecord::Migration[5.1]
  def change
    drop_table :asset_suppliers
  end
end
