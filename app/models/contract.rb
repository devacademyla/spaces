# Contract
class Contract < ApplicationRecord
  validates :start_date, presence: true
  validates :finish_date, presence: true
  has_many :contract_spaces
  has_many :payments
  belongs_to :user
  def name
    "#{start_date} | #{finish_date}"
  end
end
