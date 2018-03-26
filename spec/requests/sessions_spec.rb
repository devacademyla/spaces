# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Sessions' do
  it 'signs user in and out' do
    organization = build(:organization)
    user = build(:user, organization: organization)
    user.confirm
    sign_in user
    get rails_admin_path
    expect(controller.current_user).to eq(user)
  end
end
