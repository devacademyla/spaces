# Warehouse
class Warehouse < ApplicationRecord
  belongs_to :space
  belongs_to :supply
  has_many :input_details
  has_many :output_details
end
