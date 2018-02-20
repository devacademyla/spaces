class RemoveRelationContractsSpace < ActiveRecord::Migration[5.1]
  def change
    drop_table :contracts_spaces
  end
end
