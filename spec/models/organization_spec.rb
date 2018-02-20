require 'rails_helper'

RSpec.describe Organization, type: :model do
  it { expect(build(:organization)).to be_valid }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:organization_identifier) }
  it { should validate_uniqueness_of(:organization_identifier) }
end
