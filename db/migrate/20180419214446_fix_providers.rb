class FixProviders < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :providers, :supplier_identity, :provider_identity
    add_column :providers, :description, :text
    add_column :providers, :payment_details, :text
    remove_column :providers, :services, :string
    remove_column :providers, :ranking, :integer
    remove_column :providers, :phone, :integer
    remove_column :providers, :address, :string
    remove_column :providers, :cci, :string
    remove_column :providers, :bank, :string
    remove_column :providers, :current_account, :string
    remove_column :providers, :deductions_account, :string

  end

  def self.down
    add_column :providers, :phone, :string
    add_column :providers, :address, :text
  end
end
