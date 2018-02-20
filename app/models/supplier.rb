# Supplier
class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :supplier_identity, presence: true, uniqueness: true
  validates :services, presence: true
  validates :category, presence: true
  has_many :maintenances
  has_many :asset_suppliers
  has_many :assets, through: :asset_suppliers
end
