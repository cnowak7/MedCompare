# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: "Mini-Mobile X-Ray Machine Model 2", image:"productImage3.jpg", description:"The Mini-Mobile X-Ray Machine Model 2 is hands-down the best for your patients when you're on the go. This is the next generation model for 2016", category_id:1, manufacturer_id:1, vendor_id:1, purchase_price:2299.99, quantity_on_hand:10)
Product.create(name: "X-Ray Chip", image:"productImage1.jpg", description:"This X-Ray chip is the most advanced in the world", category_id:1, manufacturer_id:1, vendor_id:1, sale_price:50.00, purchase_price:129.99, quantity_on_hand:30)
Product.create(name: "MRI Machine", image:"productImage2.jpg", description:"This MRI Machine is the newest model around and completely new!", category_id:2, manufacturer_id:2, vendor_id:2, sale_price:5000.00, purchase_price:6549.99, quantity_on_hand:5)
Product.create(name: "Mini-Mobile X-Ray Machine", image:"productImage3.jpg", description:"The Mini-Mobile X-Ray Machine is hands-down the best for your patients when you're on the go. This is the newest model out there!", category_id:1, manufacturer_id:1, vendor_id:1, sale_price:1899.99, purchase_price:2299.99, quantity_on_hand:10)
