class ChangeTableNameUserSpaces < ActiveRecord::Migration[5.1]
  def change
    rename_table :user_spaces, :contracts
  end
end
