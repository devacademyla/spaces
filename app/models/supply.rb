# Supply
class Supply < ApplicationRecord
  validates :name, presence: true
  validates :presentation, presence: true
  validates :stock, presence: true
  validates :stock_minimun, presence: true
  validates :stock_reposition, presence: true
  has_many :warehouses
end
