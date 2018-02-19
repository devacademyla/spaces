class ContractsSpaces < ActiveRecord::Migration[5.1]
	create_table :contracts_spaces, id: false do |t|
    t.belongs_to :contract, index: true
    t.belongs_to :space, index: true
  end
end
