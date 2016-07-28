class UsersController < ApplicationController
	before_action :authorize_user, except: [:index, :create]
	before_action :admin_only, only: [:index]
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	# Is devise already doing this?
	def create
		@user = User.create( user_params )
		if user.save
			redirect_to '/'
		else
			redirect_to new_user_registration_path
		end
	end

	# Post sign-in welcome page
	def home
		@user = current_user ? @current_user.username : redirect_to sign_in_path
	end

	# user account page 
	def show
	end

	# edit account info page
	def edit
		@user = User.find(params[:id])
	end
	# patch edit page
	def update
		respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    	end
	end

	# delete account button
	def destroy
		@user.destroy
	    respond_to do |format|
	      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end



	# Admin only 
	def index
		@usersArr = User.all
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

	def set_user
		@user = User.find(params[:id])
	end

end
