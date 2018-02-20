require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  it { expect(build(:warehouse, space: build(:space), supply: build(:supply))).to be_valid }
end
