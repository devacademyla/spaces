require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a firstname, lastname, email, role and dni ' do
    organization = build(:organization)
    user = build(:user, organization: organization)
    expect(user).to be_valid
  end

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:dni) }
  it { should validate_uniqueness_of(:dni) }
  it { should belong_to(:organization) }
end
