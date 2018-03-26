# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Asset, type: :model do
  it 'is valid with a name ,category , sub_category and status' do
    space = build(:space)
    asset = build(:asset, space: space)
    expect(asset).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:sub_category) }
  it { should validate_presence_of(:status) }
end
