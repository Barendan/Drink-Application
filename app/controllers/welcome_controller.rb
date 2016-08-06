class WelcomeController < ApplicationController

  # Welcome page (root)
  def index
    @productArr = Product.all
    @typeArr = Type.all
    
  	if current_user != nil
  		redirect_to home_path(current_user.id)
  	end
    
    # Method2 to make Google Maps work
    # @users = User.all
    
    # @hash = Gmaps4rails.build_markers(@users) do |user, marker|
    #   marker.lat user.latitude
    #   marker.lng user.longitude
    #   marker.infowindow user.first_name
    # end
  end
  
end


