class OrderItem < ApplicationRecord
	validates :quant, presence: true
	validates :price, presence: true
end
