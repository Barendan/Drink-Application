class Product < ApplicationRecord
	belongs_to :brand, :type
	belongs_to :order
end
