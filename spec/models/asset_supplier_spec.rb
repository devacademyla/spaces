require 'rails_helper'

RSpec.describe AssetSupplier, type: :model do
  it { expect(build(:asset_supplier, asset: build(:asset), supplier: build(:supplier))).to be_valid }
end
