class ChangeSuppliersToProviders < ActiveRecord::Migration[5.1]
  def change
    rename_table :suppliers, :providers
  end
end
