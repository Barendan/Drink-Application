class OrdersController < ApplicationController
	before_action :authorize_user
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
		@order = Order.new
	end

	# POST create order
	def create
		@order = Order.create( order_params )
		respond_to do |format|
	      if @order.save
	        format.html { redirect_to @order, notice: 'Order was successfully created.' }
	        format.json { render :show, status: :created, location: @order }
	      else
	        format.html { render :new }
	        format.json { render json: @order.errors, status: :unprocessable_entity }
	      end
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
