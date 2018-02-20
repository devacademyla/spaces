require 'rails_helper'

RSpec.describe Contract, type: :model do
  it {
    contract = build(:contract, user: build(:user))
    expect(contract).to be_valid
    expect(contract.name).to eq("#{contract.start_date} | #{contract.finish_date}")
  }

  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:finish_date) }
end
