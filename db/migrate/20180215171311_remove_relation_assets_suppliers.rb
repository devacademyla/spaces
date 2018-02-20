class RemoveRelationAssetsSuppliers < ActiveRecord::Migration[5.1]
  def change
    drop_table :assets_suppliers
  end
end
