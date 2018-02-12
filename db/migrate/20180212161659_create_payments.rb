class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :payment
      t.date :payment_date
      t.date :warning_date
      t.integer :quantity
      t.string :status
      t.text :note
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
