# Organization
class Organization < ApplicationRecord
  validates :name, presence: true
  validates :ruc, presence: true, uniqueness: true
end
