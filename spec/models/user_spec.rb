require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a firstname, lastname, email, mobilephone, birthday, role, user_identifier and address' do
    user = build(:user)
    expect(user).to be_valid
  end

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:user_identifier) }
  it { should validate_uniqueness_of(:user_identifier) }
end
