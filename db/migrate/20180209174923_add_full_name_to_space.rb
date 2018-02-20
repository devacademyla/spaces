class AddFullNameToSpace < ActiveRecord::Migration[5.1]
  def change
    add_column :spaces, :full_name, :string
  end
end
