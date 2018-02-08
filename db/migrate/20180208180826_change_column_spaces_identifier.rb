class ChangeColumnSpacesIdentifier < ActiveRecord::Migration[5.1]
  def change
    rename_column :spaces, :code, :space_identifier
  end
end
