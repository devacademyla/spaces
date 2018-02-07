require 'rails_helper'

RSpec.describe InputDetail, type: :model do
  it 'is valid with a input detail and quantity' do
    warehouse = build(:warehouse)
    input_detail = build(:input_detail, warehouse: warehouse)
    expect(input_detail).to be_valid
  end

  it { should validate_presence_of(:input_date) }
  it { should validate_presence_of(:quantity) }
end
