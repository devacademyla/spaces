# Asset
class Asset < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :sub_category, presence: true
  validates :status, presence: true
  belongs_to :space
  has_many :asset_suppliers
end
