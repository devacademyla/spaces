class AddConfirmableToUsers < ActiveRecord::Migration[5.1]
  def self.up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
    add_column :users, :failed_attempts, :integer, :default => 0, :null => false
    add_column :users, :unlock_token, :string
    add_column :users, :locked_at, :datetime

    add_index :users, :confirmation_token, :unique => true
    add_index :users, :unlock_token, :unique => true
  end

  def self.down
    remove_column :users, :confirmation_token, :string
    remove_column :users, :confirmed_at, :datetime
    remove_column :users, :confirmation_sent_at, :datetime
    remove_column :users, :unconfirmed_email, :string
    remove_column :users, :failed_attempts, :integer
    remove_column :users, :unlock_token, :string
    remove_column :users, :locked_at, :datetime

    remove_index :users, :confirmation_token
    remove_index :users, :unlock_token
  end
end
