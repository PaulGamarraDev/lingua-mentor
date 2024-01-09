class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :first_name, :last_name, :country, :city, :date_of_birth, :about_me, :native_language, :other_language, :learning_languages, :objectives])
    devise_parameter_sanitizer.permit(:account_update, keys: [:role, :first_name, :last_name, :country, :city, :date_of_birth, :about_me, :native_language, :other_language, :learning_languages, :objectives])
  end
end
