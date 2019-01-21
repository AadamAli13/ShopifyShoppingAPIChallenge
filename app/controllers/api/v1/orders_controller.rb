module Api
	module V1
	
		#Helps to create the orders 
		class OrdersController < ApplicationController
			def new 
				@order = current_cart.order
			end
			def create 
				@order = current_cart.order
				render :new
			
			end
		
		end
	end
end