# Maintenace
class Maintenance < ApplicationRecord
  validates :registration_date, presence: true
  validates :status, presence: true
  belongs_to :supplier
  belongs_to :asset
end
