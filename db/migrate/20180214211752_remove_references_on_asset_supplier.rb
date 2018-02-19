class RemoveReferencesOnAssetSupplier < ActiveRecord::Migration[5.1]
  def change
    remove_reference(:asset_suppliers, :asset, index: true)
    remove_reference(:asset_suppliers, :supplier, index: true)
  end
end
