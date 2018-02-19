# Payment
class Payment < ApplicationRecord
  validates :due_date, presence: true
  validates :payment_date, presence: true
  validates :amount, presence: true
  validates :status, presence: true
  belongs_to :contract
end
