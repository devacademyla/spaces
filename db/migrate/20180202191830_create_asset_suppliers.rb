class CreateAssetSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_suppliers do |t|
      t.timestamps
    end
  end
end
