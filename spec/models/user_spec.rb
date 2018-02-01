require 'rails_helper'

# spec/support/factory_bot.rb
# RSpec.configure do |config|
  # config.include FactoryBot::Syntax::Methods
# end

RSpec.describe User, type: :model do
  it 'is valid with a firstname, lastname, email, mobilphone, birthday, role, dni and address' do
    user = build(:user)
    expect(user).to be_valid
  end
  
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:dni) }
  it { should validate_uniqueness_of(:dni)}
end
