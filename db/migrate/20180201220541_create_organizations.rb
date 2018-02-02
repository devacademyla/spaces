class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.integer :ruc
      t.string :website

      t.timestamps
    end
  end
end
