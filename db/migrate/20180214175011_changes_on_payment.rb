class ChangesOnPayment < ActiveRecord::Migration[5.1]
  def change
  	rename_column :payments, :warning_date, :due_date
  	rename_column :payments, :quantity, :amount
  	remove_column :payments, :payment, :integer
  	change_column :payments, :amount, :float
  end
end
