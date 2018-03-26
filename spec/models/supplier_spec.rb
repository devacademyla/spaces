# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it 'is valid with a name, supplier_identity, services, category' do
    supplier = build(:supplier)
    expect(supplier).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:supplier_identity) }
  it { should validate_uniqueness_of(:supplier_identity) }
  it { should validate_presence_of(:services) }
  it { should validate_presence_of(:category) }
end
