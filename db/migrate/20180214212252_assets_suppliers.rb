class AssetsSuppliers < ActiveRecord::Migration[5.1]
	create_table :assets_suppliers, id: false do |t|
    t.belongs_to :asset, index: true
    t.belongs_to :supplier, index: true
  end
end
