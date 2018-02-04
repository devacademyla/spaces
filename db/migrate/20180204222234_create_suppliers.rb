class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :phone
      t.integer :supplier_identity
      t.integer :ranking
      t.string :services
      t.string :category
      t.string :address
      t.string :bank
      t.integer :current_account
      t.string :email
      t.integer :cci
      t.integer :deductions_account

      t.timestamps
    end
  end
end
