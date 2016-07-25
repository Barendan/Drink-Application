class Product < ApplicationRecord
	has_many :brands, :types, 
	belongs_to :order
	
end
