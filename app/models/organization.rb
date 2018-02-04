# Organization
class Organization < ApplicationRecord
  validates :name, presence: true
  validates :organization_identifier, presence: true, uniqueness: true
  has_many :users
end
