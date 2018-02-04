# Space
class Space < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
  validates :capacity, presence: true
  belongs_to :parent, inverse_of: :children, foreign_key: :space_id, class_name: 'Space', optional: true
  has_many :children, inverse_of: :parent, foreign_key: :space_id, class_name: 'Space'
  has_many :user_spaces
end
