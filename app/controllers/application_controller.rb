# ApplicationController
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  check_authorization :unless => :devise_controller?
  before_action :authenticate_user!, unless: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to main_app.root_url, :alert => exception.message }
    end
  end
end
