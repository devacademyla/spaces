# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it 'is valid with a name, supplier_identity, category, phone' do
    supplier = build(:supplier)
    expect(supplier).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:supplier_identity) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:phone) }

  context 'when supplier_identity is blank' do
    let!(:supplier_1) { create(:supplier, supplier_identity: nil) }
    let(:supplier_2) { build(:supplier, supplier_identity: nil) }
    it { expect(supplier_2).to be_valid }
  end
end
