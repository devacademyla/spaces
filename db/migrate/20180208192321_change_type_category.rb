class ChangeTypeCategory < ActiveRecord::Migration[5.1]
  def up
    change_table :maintenances do |t|
      t.change :status, :string
    end
  end
end
