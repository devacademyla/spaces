require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a firstname, lastname, email, mobilphone, birthday, is_admin, dni and address' do
    user = User.new(
      first_name: 'Andersson',
      last_name: 'Velasquez',
      email: 'cxasper23@gmail.com',
      mobile_phone: '921945949',
      birthday: '1997-07-02',
      is_admin: 'yes',
      dni: '700669536',
      address: 'Urb. villa el periodista a-11'
    )
    expect(user).to be_valid
  end

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:mobile_phone) }
  it { should validate_presence_of(:birthday) }
  it { should validate_presence_of(:is_admin) }
  it { should validate_presence_of(:dni) }
  it { should validate_presence_of(:address) }
end
