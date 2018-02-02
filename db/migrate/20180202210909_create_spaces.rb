class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.integer :code
      t.string :name
      t.string :category
      t.integer :capacity
      t.float :area
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
