class ApplicationController < ActionController::API

	#Helps to protect API from being copied
	protect_from_forgert with :exception
	
	#Creates the cart before adding to a cart
	before_action :current_cart
	def current_cart
		@current_cart ||= ShoppingCart.new(token: cart_token)
		
	end
	
	private
		
	
	#This is used to help keep unique carts between users
	def cart_token 
		return @cart_token unless @cart_token.nil?
			
		session[:cart_token] ||= SecureRandom.hex(8)
		@cart_token = session[:cart_token]
	end	
		
	
end
