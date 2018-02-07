class ChangeTypeCategorySuppliers < ActiveRecord::Migration[5.1]
  def up
    change_table :suppliers do |t|
      t.change :supplier_identity, :string
      t.change :current_account, :string
      t.change :cci, :string
      t.change :deductions_account, :string
    end
  end
end
