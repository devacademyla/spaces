require 'rails_helper'

RSpec.describe ContractSpace, type: :model do
  it 'is valid ' do
    contract = build(:contract)
    space = build(:space)
    contract_space = build(:contract_space, contract: contract, space: space)
    expect(contract_space).to be_valid
  end
end
