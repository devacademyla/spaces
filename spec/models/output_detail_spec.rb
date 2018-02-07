require 'rails_helper'

RSpec.describe OutputDetail, type: :model do
  it 'is valid with a output detail and quantity' do
    warehouse = build(:warehouse)
    output_detail = build(:output_detail, warehouse: warehouse)
    expect(output_detail).to be_valid
  end

  it { should validate_presence_of(:output_date) }
  it { should validate_presence_of(:quantity) }
end
