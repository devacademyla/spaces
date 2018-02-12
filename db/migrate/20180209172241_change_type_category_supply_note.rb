class ChangeTypeCategorySupplyNote < ActiveRecord::Migration[5.1]
  def up
    change_table :supplies do |t|
      t.change :note, :text
    end
  end
end
