# frozen_string_literal: true

require 'rails_helper'

describe Users::RegistrationsController, type: :controller do
  before :each do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe 'test login user' do
    login_user

    it 'should have a current_user' do
      expect(subject.current_user).to_not eq(nil)
    end
  end

  describe 'test sign up user' do
    it 'should get sign up user' do
      expect do
        organization = create(:organization)
        user_params = attributes_for(:user, organization_id: organization.id)
        user_params = user_params.merge(password_confirmation: user_params[:password])
        post :create, params: { user: user_params }
      end.to change(User, :count).by(1)
    end
  end
end
