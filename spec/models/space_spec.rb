require 'rails_helper'

RSpec.describe Space, type: :model do
  it {
    space = build(:space)
    expect(space).to be_valid
  }

  it { should validate_presence_of(:space_identifier) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:space_identifier) }
end
