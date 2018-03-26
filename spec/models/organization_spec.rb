# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'is valid with a name and organization_identifier' do
    organization = build(:organization)
    expect(organization).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:organization_identifier) }
  it { should validate_uniqueness_of(:organization_identifier) }
end
