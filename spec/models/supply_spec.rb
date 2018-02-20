require 'rails_helper'

RSpec.describe Supply, type: :model do
  it { expect(build(:supply)).to be_valid }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:stock) }
  it { should validate_presence_of(:stock_minimun) }
  it { should validate_presence_of(:stock_reposition) }
end
