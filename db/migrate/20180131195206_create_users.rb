class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_phone
      t.string :emergency_phone
      t.string :emergency_contact
      t.date :birthday
      t.string :role
      t.integer :user_identifier
      t.string :address
      t.text :bio

      t.timestamps
    end
  end
end
