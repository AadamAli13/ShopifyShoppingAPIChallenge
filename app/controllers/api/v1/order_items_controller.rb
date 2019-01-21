
#MModule used just in case other version of the API are added
module Api
	module V1
		
		#This controller creates the order to the cart 
		class OrderItemsController < ApplicationController
			def create 
				current_cart.add_item(
					id: params[:id]
					quantity: params[:quant]
				)
				
				redirect_to cart_path
			end 
		end 
	end
end