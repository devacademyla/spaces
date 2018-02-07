class ChangeTypeCategorySuppliers < ActiveRecord::Migration[5.1]
  def up
    change_table :suppliers do |t|
      t.change :supplier_identity, :string
    end
  end
end
