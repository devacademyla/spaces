# supplier
class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :supplier_identity, presence: true, uniqueness: true
  validates :services, presence: true
  validates :category, presence: true
end
