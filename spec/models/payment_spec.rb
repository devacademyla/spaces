require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { expect(build(:payment, contract: build(:contract))).to be_valid }
  it { should validate_presence_of(:due_date) }
  it { should validate_presence_of(:payment_date) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:status) }
end
