class ChangeTypeSupplier < ActiveRecord::Migration[5.1]
  def self.up
    add_column :suppliers, :description, :text
    add_column :suppliers, :payment_details, :text
    remove_column :suppliers, :ranking, :integer
    remove_column :suppliers, :services, :string
    remove_column :suppliers, :bank, :string
    remove_column :suppliers, :phone, :integer
    remove_column :suppliers, :cci, :string
    remove_column :suppliers, :deductions_account, :string
    remove_column :suppliers, :current_account, :string
    remove_column :suppliers, :address, :string
    add_column :suppliers, :phone, :string
    add_column :suppliers, :address, :text
  end
end
