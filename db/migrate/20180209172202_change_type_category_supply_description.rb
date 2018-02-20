class ChangeTypeCategorySupplyDescription < ActiveRecord::Migration[5.1]
  def up
    change_table :supplies do |t|
      t.change :description, :text
    end
  end
end
