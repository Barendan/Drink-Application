class OrdersController < ApplicationController
	# before_action :authorize_user
	before_action :set_order, only: [:show, :edit, :update, :destroy]

	# Show individual order details
	def show
		@user = current_user
		reinforce = [
			"You made a good choice,",
			"You'll be drinking in no time,",
			"Enjoy your drinks,",
			"Celebrate all the good times,",
			"Down the hole it goes,",
		]
		@reinforce = reinforce.sample
	end

	# Request order form
	def new
		@user = current_user
		@order = Order.new
    	@productArr = Product.all
    	@typeArr = Type.all
    	@userOrders = @user.orders.all

		greetings = [
			"It's 5 o'clock somewhere,",
			"I hope you are feeling thirsty,",
			"Here's your excuse to drink,",
			"Double shot for my buddy,",
			"It's just one drink,",
			"Drink responsibly,",
		]
		@randomGreet = greetings.sample
	end
# @my_project = Project.find(params[:project_id])

# @my_entry = @my_project.time_entries.new(entry_params)

	# POST create order
	def create
		@order = Order.new(
    		:user_id => current_user.id,
			:driver_id => 3,
			:address => params[:order][:address],
			:scheduled_for => Time.now,
			:status_id => "Accepted",
			)
		if @order.save
			@product_order = ProductOrder.new(
				:product_id => params[:product_order][:product_id],
				:order_id => @order.id,
				:quantity => params[:product_order][:quantity])
			@product_order.save
			redirect_to("/users/#{@current_user.id}/orders/#{@order.id}")
    	else 
			flash[:alert] = "Your order has an error. Please try again."
    		render 'new'
		end
    end


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
