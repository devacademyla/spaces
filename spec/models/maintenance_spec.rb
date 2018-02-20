require 'rails_helper'

RSpec.describe Maintenance, type: :model do
  it { expect(build(:maintenance, supplier: build(:supplier), asset: build(:asset))).to be_valid }
  it { should validate_presence_of(:registration_date) }
  it { should validate_presence_of(:status) }
end
