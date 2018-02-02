class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :mobile_phone
      t.integer :emergency_phone
      t.string :emergency_contact
      t.date :birthday
      t.boolean :is_admin
      t.integer :dni
      t.string :address
      t.text :bio

      t.timestamps
    end
  end
end
