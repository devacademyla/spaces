# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AssetSupplier, type: :model do
  it 'is valid' do
    supplier = build(:supplier)
    asset = build(:asset)
    asset_supplier = build(:asset_supplier, supplier: supplier, asset: asset)
    expect(asset_supplier).to be_valid
  end
end
