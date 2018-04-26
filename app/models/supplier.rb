# frozen_string_literal: true

# Supplier
class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :supplier_identity, presence: true, uniqueness: true
  has_many :asset_suppliers
  has_many :maintenances
end
