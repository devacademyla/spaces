require 'rails_helper'

RSpec.describe Space, type: :model do
  it 'is valid with a code, name and capacity' do
    space = build(:space)
    expect(space).to be_valid
  end

  it { should validate_presence_of(:code) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:code) }
  it { should validate_presence_of(:capacity) }
end
