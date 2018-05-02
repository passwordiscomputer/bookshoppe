class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user, :current_account, :current_order
  before_action :configure_permitted_parameters, if: :devise_controller?


  def current_order
      if session[:order_id]
        Order.find(session[:order_id])
      else
        Order.new
      end
    end

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :avatar) }
  end
end
