# User
class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :role, presence: true
  validates :user_identifier, presence: true, uniqueness: true
end
