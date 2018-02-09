class ChangeTypeCategorySpaceIdentifier < ActiveRecord::Migration[5.1]
  def up
    change_table :spaces do |t|
      t.change :space_identifier, :string
    end
  end
end
