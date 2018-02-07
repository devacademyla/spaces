# OutputDetail
class OutputDetail < ApplicationRecord
  validates :output_date, presence: true
  validates :quantity, presence: true
  belongs_to :warehouse
end
