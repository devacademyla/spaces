# User
class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :role, presence: true
  validates :dni, presence: true, uniqueness: true
  belongs_to :organization
end
