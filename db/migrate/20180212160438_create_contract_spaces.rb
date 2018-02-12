class CreateContractSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_spaces do |t|
      t.references :contract, foreign_key: true
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
