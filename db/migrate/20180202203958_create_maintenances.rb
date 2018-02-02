class CreateMaintenances < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenances do |t|
      t.date :registration_date
      t.string :status
      t.references :supplier, foreign_key: true
      t.references :asset, foreign_key: true

      t.timestamps
    end
  end
end
