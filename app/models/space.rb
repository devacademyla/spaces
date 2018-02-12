# Space
class Space < ApplicationRecord
  validates :space_identifier, presence: true, uniqueness: true
  validates :name, presence: true
  belongs_to :parent, inverse_of: :children, foreign_key: :space_id, class_name: 'Space', optional: true
  has_many :children, inverse_of: :parent, foreign_key: :space_id, class_name: 'Space'
  has_many :assets
  has_many :contract_spaces
  has_one :warehouse

  before_save :generate_full_name

  protected

  def generate_full_name
    new_name = name
    next_parent = parent
    while next_parent
      new_name = "#{parent.name} | #{new_name}"
      next_parent = next_parent.parent
    end
    self.full_name = parent ? new_name : name
  end
end

# def generate_full_name
#   return self.full_name = name unless parent
#   while next_parent = parent
#     full_name = "#{next_parent.name} | #{full_name}"
#   end
# end
