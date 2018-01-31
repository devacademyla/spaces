# User
class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :mobile_phone, presence: true
  validates :birthday, presence: true
  validates :is_admin, presence: true
  validates :dni, presence: true, uniqueness: true
  validates :address, presence: true
end
