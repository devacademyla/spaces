require 'rails_helper'

RSpec.describe UserSpace, type: :model do
  it 'is valid with a start date and finish date' do
    user = build(:user)
    space = build(:space)
    user_space = build(:user_space, user: user, space: space)
    expect(user_space).to be_valid
  end

  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:finish_date) }
end
