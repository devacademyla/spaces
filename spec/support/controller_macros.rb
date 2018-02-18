module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      organization = create(:organization)
      user = create(:user, organization: organization)
      user.confirm
      sign_in user
    end
  end
end