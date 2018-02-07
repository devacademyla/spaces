# InputDetail
class InputDetail < ApplicationRecord
  validates :input_date, presence: true
  validates :quantity, presence: true
  belongs_to :warehouse
end
