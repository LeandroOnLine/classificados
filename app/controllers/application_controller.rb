class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :current_user_name

def current_controller?(names)
  names == (params[:controller]) unless params[:controller].blank? || false
end

protected

def configure_permitted_parameters
  added_attrs = [:user_name, :cell_phone, :email, :password, :password_confirmation, :remember_me]
  devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end

def current_user_name
  @user_name = current_user[:user_name] if current_user
end
end
