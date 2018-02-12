class ChangeTypeCategoryOrganizationDescription < ActiveRecord::Migration[5.1]
  def up
    change_table :organizations do |t|
      t.change :description, :text
    end
  end
end
