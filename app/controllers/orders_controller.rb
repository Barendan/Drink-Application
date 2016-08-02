class OrdersController < ApplicationController
	# before_action :authorize_user
	before_action :set_order, only: [:show, :edit, :update, :destroy]


	# All orders for specific user
	def index
		@orders = Order.all
	end

	# Show individual order details
	def show
		@order = Order.find(params[:id])
	end

	# Request order form
	def new
		# @user = User.find(params[:user_id])
		@user = current_user
		@order = Order.new

		greetings = [
			"It's 5 o'clock somewhere,",
			"I hope you are feeling thirsty,",
			"Here's your excuse to drink,",
			"Double shot for my buddy,",
			"It's just one drink,",
			"Drink responsibly,",
		]
		@randomGreet = greetings.sample

  # 	@allTypes = Type.all
  #   	@allBrands = Brand.all
  #   	@allProducts = Product.all
	end

	# POST create order
	def create
		@order = Order.new(
    		:user_id => current_user.id,
			:driver_id => params[:order][:driver_id],
			:address => params[:order][:address],
			:status_id => "Accepted",
			:scheduled_for => Time.now,
			)
		if @order.save
			@product_order = ProductOrder.new(
				:quantity => params[:product_order][:quantity],
				:product_id => params[:product_order][:product_id],
				:order_id => @order.id)
			@product_order.save
			redirect_to("/users/#{@current_user.id}/orders/#{@order.id}")
    	else 
			flash[:alert] = "Your order had an error."
    		render 'new'
		end


    end

  #   	# Second
		# @order = Order.create( order_params )
		# respond_to do |format|
	 #      if @order.save
	 #        format.html { redirect_to @order, notice: 'Order was successfully created.' }
	 #        format.json { render :show, status: :created, location: @order }
	 #      else
	 #        format.html { render :new }
	 #        format.json { render json: @order.errors, status: :unprocessable_entity }
	 #      end

		# # Third
		# @my_project = Project.find(params[:project_id])

		# @my_entry = @my_project.time_entries.new(entry_params)

		# if @my_entry.save
		# 	flash[:notice] = "Project created succesfully"
		# 	redirect_to "/projects/#{@my_project.id}/time_entries"


	# Edit order Form
	def edit

	end

	# Patch edit page
	def update
		respond_to do |format|
      if @order.update( order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    	end
	end

	def destroy
		@order.destroy
	    respond_to do |format|
	      format.html { redirect_to order_url, notice: 'Order was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private

	def set_order
		@order = Order.find(params[:id])
	end

	def order_params
		params.require(:order).permit(
		:first_name,
		:last_name,
		:driver_license
		)
	end

end
