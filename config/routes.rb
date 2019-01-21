#This is the most important part of the application 
Rails.application.routes.draw do

	#Namespaces make it easier to navigate paths 
	namespace 'api' do	
		namespace 'v1' do
				
				
				root to: 'products#index'
				resources :products
				
				#Specifies paths and routes to link together the controllers and requests
				get '/cart', to: 'order_items#index'
				resources :order_items
				
				get 'shoppingcart#add_item', to: 'orders#new', as :checkout
				
				patch 'shoppingcart', to: 'orders#create'
				
				
		end
	end
	
end
