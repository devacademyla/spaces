class CreateContractSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_spaces do |t|
    	t.belongs_to :contract, index: true
      t.belongs_to :space, index: true
      t.datetime :appointment_date
   
      t.timestamps
    end
  end
end
