module Api
	module V1
	
		class ProductsController < ApplicationController
			#Returns all products with inventory count greater than 0 using the parameters
			def index
				products = Product.where(params[:id]).where(params[:inventory_count] ? {:inventory_count => params[:inventory_count]} : "inventory_count > 0" ).order("created_at DESC")
				render json: {status: 'SUCCESS', message:'products', data: products}, status: :ok
			end
			
			#Used for testing purposes to request a specific product
			def show
				
				pro = Product.find(params[:id])
				render json: {status: 'SUCCESS', message:'products', data: pro}, status: :ok
				
			end
		end
	end

end