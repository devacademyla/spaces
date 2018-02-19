class RemoveReferencesOnContractSpaces < ActiveRecord::Migration[5.1]
  def change
    remove_reference(:contract_spaces, :space, index: true)
    remove_reference(:contract_spaces, :contract, index: true)
  end
end
