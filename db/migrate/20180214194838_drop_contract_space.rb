class DropContractSpace < ActiveRecord::Migration[5.1]
  def change
    drop_table :contract_spaces
  end
end
