class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :color
      t.string :category
      t.string :sub_category
      t.integer :status
      t.string :description
      t.integer :interval

      t.timestamps
    end
  end
end
