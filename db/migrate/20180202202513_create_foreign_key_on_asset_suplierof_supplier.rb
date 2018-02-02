class CreateForeignKeyOnAssetSuplierofSupplier < ActiveRecord::Migration[5.1]
  def change
    add_reference :asset_suppliers, :supplier, foreign_key: true
    add_reference :asset_suppliers, :asset, foreign_key: true
  end
end
