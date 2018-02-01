class ChangeRole < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :is_admin, :role
  	change_column :users, :role, :string
  end
end
