class ProductsController < ApplicationController

	# full product display page
	def index
		@productArr = Product.all
	end

end
