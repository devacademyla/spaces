require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'is valid with a name and ruc' do
    organization = build(:organization)
    expect(organization).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:ruc) }
  it { should validate_uniqueness_of(:ruc) }
end
