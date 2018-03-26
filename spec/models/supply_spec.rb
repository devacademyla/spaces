# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Supply, type: :model do
  it 'is valid with a name ,presentation, stock, stock minumin and stock reposition' do
    supply = build(:supply)
    expect(supply).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:stock) }
  it { should validate_presence_of(:stock_minimun) }
  it { should validate_presence_of(:stock_reposition) }
end
