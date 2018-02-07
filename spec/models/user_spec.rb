require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a first name, last name, email, role and user_identifier' do
    organization = build(:organization)
    user = build(:user, organization: organization)
    expect(user).to be_valid
    expect(user.name).to eq("#{user.first_name} #{user.last_name}")
  end

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:user_identifier) }
  it { should validate_uniqueness_of(:user_identifier) }
  it { should belong_to(:organization) }
end
