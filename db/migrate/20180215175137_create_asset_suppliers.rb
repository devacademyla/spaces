class CreateAssetSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_suppliers do |t|
    	t.belongs_to :asset, index: true
      t.belongs_to :supplier, index: true
 
      t.timestamps
    end
  end
end
