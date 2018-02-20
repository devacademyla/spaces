class RemoveColumnOnContractSpace < ActiveRecord::Migration[5.1]
  def change
    remove_column :contract_spaces, :appointment_date, :datetime
  end
end
