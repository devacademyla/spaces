# frozen_string_literal: true

# Space
class Space < ApplicationRecord
  validates :space_identifier, presence: true, uniqueness: true
  validates :name, presence: true
  belongs_to :parent, inverse_of: :children, foreign_key: :space_id, class_name: 'Space', optional: true
  has_many :children, inverse_of: :parent, foreign_key: :space_id, class_name: 'Space'
  has_many :contracts
  has_many :assets
  has_one :warehouse
end
