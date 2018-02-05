require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  it 'is valid ' do
    supply = build(:supply)
    space = build(:space)
    warehouse = build(:warehouse, space: space, supply: supply)
    expect(warehouse).to be_valid
  end
end
