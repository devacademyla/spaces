class CreateUserSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :user_spaces do |t|
      t.date :start_date
      t.date :finish_date
      t.references :space, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
