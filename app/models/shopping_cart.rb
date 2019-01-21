
#This class allows there to be a shopping cart funtionality 
class ShoppingCart
	
	#This token is an attribute that makes an order unique
	def initialize(token:)
		@token = token
	end 
	
	#This method is used to order an item
	def order 
		@order || = Order.find_or_create_by(token: @token) do |order|
			order.total = 0
		end 
	end 
	
	#This method adds an item to the cart
	def add_item(id:, quantity:1)
		pro = Product.find(id)
		
		order_item = order.items.find_or_create_by(
			id: id
		)
		
		
		order_item.price = pro.price
		order_item.quant = quantity
		
		#Decrements product inventory count when item is added to cart
		pro.inventory_count = pro.inventory_count -1
		
		order_item.save
		
	end
	
	#This sums the total for the user 
	def sum_total!
		order.total = order_items.sum('quant * price')
		order.save
	end
end 