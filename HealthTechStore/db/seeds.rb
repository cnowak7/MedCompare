# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: "Mini-Mobile X-Ray Machine Model 2", image:"productImage3.jpg", description:"The Mini-Mobile X-Ray Machine Model 2 is hands-down the best for your patients when you're on the go. This is the next generation model for 2016", categoryId:1, manufacturerId:1, vendorId:1, purchasePrice:2299.99, quantityOnHand:10)
Product.create(name: "X-Ray Chip", image:"productImage1.jpg", description:"This X-Ray chip is the most advanced in the world", categoryId:1, manufacturerId:1, vendorId:1, salePrice:50.00, purchasePrice:129.99, quantityOnHand:30)
Product.create(name: "MRI Machine", image:"productImage2.jpg", description:"This MRI Machine is the newest model around and completely new!", categoryId:2, manufacturerId:2, vendorId:2, salePrice:5000.00, purchasePrice:6549.99, quantityOnHand:5)
Product.create(name: "Mini-Mobile X-Ray Machine", image:"productImage3.jpg", description:"The Mini-Mobile X-Ray Machine is hands-down the best for your patients when you're on the go. This is the newest model out there!", categoryId:1, manufacturerId:1, vendorId:1, salePrice:1899.99, purchasePrice:2299.99, quantityOnHand:10)


