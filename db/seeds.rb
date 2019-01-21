
#Used to generate tests and fake data

5.times do
	Product.create({
		title: Faker::Book.title,
		price: Faker::Number.decimal,
		inventory_count: Faker::Number.number(4)
	
	})
	
	Product.create({
		title: Faker::Book.title,
		price: Faker::Number.decimal,
		inventory_count: 0
	
	})
	
end




