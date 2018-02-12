require 'rails_helper'

RSpec.describe Payment, type: :model do
  it 'is valid with a payment, payment date, quantity and status' do
    contract = build(:contract)
    payment = build(:payment, contract: contract)
    expect(payment).to be_valid
  end

  it { should validate_presence_of(:payment) }
  it { should validate_presence_of(:payment_date) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:status) }
end
