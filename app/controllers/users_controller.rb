class UsersController < ApplicationController

	def home
		@name = current_user ? @current_user.username : "Guest"
	end

	def index
		@allUsers = User.all
	end

	def create
		@user = User.create( user_params )
		if user.save
			redirect_to '/'
		else
			redirect_to new_user_registration_path
		end
	end

	private
	def user_params
		params.require(:user).permit(
		:first_name
		:last_name
		:driver_license
		:avatar
		:address
		:phone
		:birthday
		)
	end

end
