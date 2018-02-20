require 'rails_helper'

RSpec.describe Asset, type: :model do
  it { expect(build(:asset, space: build(:space))).to be_valid }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:sub_category) }
  it { should validate_presence_of(:status) }
end
