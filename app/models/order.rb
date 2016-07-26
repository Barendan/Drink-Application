class Order < ApplicationRecord
	belongs_to :user

	has_many :products
	# has_many :statuses
	# has_many :brands, through: :products
	# has_many :types, through: :products
end
