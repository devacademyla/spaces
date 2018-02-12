class ChangeTypeCategorySupplierAddress < ActiveRecord::Migration[5.1]
  def up
    change_table :suppliers do |t|
      t.change :address, :text
    end
  end
end
