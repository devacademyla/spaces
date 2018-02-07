class ChangeTypeCategoryOrganization < ActiveRecord::Migration[5.1]
  def up
    change_table :organizations do |t|
      t.change :organization_identifier, :string
    end
  end
end
