# Contract
class Contract < ApplicationRecord
  validates :start_date, presence: true
  validates :finish_date, presence: true
  belongs_to :space
  belongs_to :user
end
