require 'rails_helper'

RSpec.describe ContractSpace, type: :model do
  it { expect(build(:contract_space, contract: build(:contract), space: build(:space))).to be_valid }
end
