# Space
class Space < ApplicationRecord
  validates :space_identifier, presence: true, uniqueness: true
  validates :name, presence: true
  belongs_to :parent, inverse_of: :children, foreign_key: :space_id, class_name: 'Space', optional: true
  has_many :children, inverse_of: :parent, foreign_key: :space_id, class_name: 'Space'
  has_many :assets
  has_one :warehouse
  has_many :contract_spaces
  has_many :contracts, through: :contract_spaces

  before_save :generate_full_name

  protected

  def generate_full_name
    self.full_name = array_parents.reverse.map(&:name).join(' | ')
  end

  def array_parents
    objects = [self]
    objects.push(objects.last.parent) while objects.last.parent
    objects
  end
end
