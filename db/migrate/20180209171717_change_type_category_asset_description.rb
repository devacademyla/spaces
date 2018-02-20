class ChangeTypeCategoryAssetDescription < ActiveRecord::Migration[5.1]
  def up
    change_table :assets do |t|
      t.change :description, :text
    end
  end
end
