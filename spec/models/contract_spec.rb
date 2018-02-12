require 'rails_helper'

RSpec.describe Contract, type: :model do
  it 'is valid with a start date and finish date' do
    user = build(:user)
    contract = build(:contract, user: user)
    expect(contract).to be_valid
  end

  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:finish_date) }
end
