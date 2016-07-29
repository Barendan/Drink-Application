class WelcomeController < ApplicationController

  # Welcome page (root)
  def index
  	if current_user != nil
  		redirect_to home_path(current_user.id)
  	end
	  
    # @allTypes = Type.all
    # @allBrands = Brand.all
    # @allProducts = Product.all
  end
  
end
