# frozen_string_literal: true

# Supplier
class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :phone, presence: true
  validates :supplier_identity, uniqueness: true, allow_blank: true
  has_many :asset_suppliers
  has_many :maintenances
end
