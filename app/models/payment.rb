# Payment
class Payment < ApplicationRecord
  validates :payment, presence: true
  validates :payment_date, presence: true
  validates :quantity, presence: true
  validates :status, presence: true
  belongs_to :contract
end
