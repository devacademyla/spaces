require 'rails_helper'

RSpec.describe Maintenance, type: :model do
  it 'is valid with a registration date and status' do
    supplier = build(:supplier)
    asset = build(:asset)
    maintenance = build(:maintenance, supplier: supplier, asset: asset)
    expect(maintenance).to be_valid
  end

  it { should validate_presence_of(:registration_date) }
  it { should validate_presence_of(:status) }
end
