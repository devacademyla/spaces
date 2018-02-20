class ChangeTypeCategoryUserAddress < ActiveRecord::Migration[5.1]
  def up
    change_table :users do |t|
      t.change :address, :text
    end
  end
end
