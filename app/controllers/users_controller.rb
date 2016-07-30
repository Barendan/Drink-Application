class UsersController < ApplicationController
	# before_action :authorize_user, except: [:index, :create]
	before_action :admin_only, only: [:index, :show, :destroy]


	# Admin only 
	def index
		@usersArr = User.all
	end

	# User account page
	def show
		@user = User.find(params[:id])
	end

	# Destroy user account(admin only)
	def destroy
		@user = User.find(params[:id])
		@user.destroy
	    	respond_to do |format|
	        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
	        format.json { head :no_content }
	    	end
	end

	private
	def user_params
		params.require(:user).permit(
		:first_name,
		:last_name,
		:driver_license,
		:license_pic,
		:address,
		:phone,
		:birthday
		)
	end

end
