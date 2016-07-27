class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up,
  		keys: [:first_name, :last_name, :driver_license, :avatar, :address, :phone, :birthday])
    devise_parameter_sanitizer.permit(:edit,
  		keys: [:first_name, :last_name, :driver_license, :avatar, :address, :phone, :birthday])
  
  end

  def current_user
  	if @current_user.nil?
  		@current_user = User.find_by(id: session[:user_id])
  	end

  	@current_user
  end

  def authorize_user
  	unless current_user
  		flash[:message] = 'Please log in or register to place an order'
  		redirect_to "/"
  	end
  end

  def admin_only
  	unless current_user.nil? || current_user.role != "admin"
  		flash[:access_denied] = "Access denied. You must be an admin to see this page."
  		redirect_to '/home'
  	end
  end

end
