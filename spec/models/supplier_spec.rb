require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it { expect(build(:supplier)).to be_valid }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:supplier_identity) }
  it { should validate_uniqueness_of(:supplier_identity) }
  it { should validate_presence_of(:services) }
  it { should validate_presence_of(:category) }
end
