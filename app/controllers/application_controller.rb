class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up,
  		keys: [:first_name, :last_name, :driver_license, :license_pic, :address, :phone, :birthday])
    devise_parameter_sanitizer.permit(:account_update,
  		keys: [:first_name, :last_name, :driver_license, :license_pic, :address, :phone, :birthday])
  
  end

  # Problem will occur with redirect if there is no current_user
  def admin_only
    @user = current_user
    if @user.role != "admin"
      redirect_to root_path
    end
  end

end
