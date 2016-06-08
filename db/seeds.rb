# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# MESSAGE FROM CHRIS - Hi guys. Whenever you see new sample data being created here, complete the following steps
#                      in the command prompt to see the sample data in your local app:
#                      1.) rake db:drop (clears all data from the database)
#                      2.) rake db:migrate (loads our schema into the database)
#                      3.) rake db:seed (officially loads sample data into database)
#                      4.) rails server (to run the server and see our sample data)

# ADMIN USER:

User.create(email: "medCompareAdmin@gmail.com",
			password: "adminPassword",
			password_confirmation: "adminPassword")

# VENDORS:

Vendor.create(name: "HealthTech United",
				image: "vendorImage1.jpg",
				description: "We provide the most up-to-date technology for practioners in the health industry.",
				search_tags: "wearable, MRI, United, healthTech",
				email: "healthTechUnited@gmail.com",
				phone_number: "111-111-1111",
				password: "vendor",
				password_confirmation: "vendor")
Vendor.create(name: "Tech-For-Health Foundation",
				image: "vendorImage2.jpg",
				description: "Top-notch health technology for top-notch treatment. Let us save lives with you.",
				search_tags: "x-ray, ultrasound, pregnancy, baby, heart, bursitis",
				email: "techForHealth@gmail.com",
				phone_number: "222-222-2222",
				password: "vendor",
				password_confirmation: "vendor")
Vendor.create(name: "Aviato",
				image: "vendorImage3.jpg",
				description: "HealthTech United enslaves children overseas to build their tech, so choose us. Aviato is the revolution of health tech.",
				search_tags: "mri, best, health, tech, heart, blood pressure",
				email: "myAviato@gmail.com",
				phone_number: "333-333-3333",
				password: "vendor",
				password_confirmation: "vendor")
Vendor.create(name: "Health-To-The-Tech LLC",
				image: "vendorImage4.jpg",
				description: "Buy our health technology so your patients can have the best quality care every time, all the time. We specialize in selling top-notch X-Ray and MRI Machine Technology",
				search_tags: "pricate, affordable, reliable, xray, mri, ultrasound",
				email: "healthToTheTech@gmail.com",
				phone_number: "444-444-4444",
				password: "vendor",
				password_confirmation: "vendor")

# CATEGORIES:

Category.create(name: "X-Ray",
				description: "All technology associated with X-Ray machines.")
Category.create(name: "MRI",
				description: "All technology associated with MRI machines.")
Category.create(name: "Heart Health",
				description: "All technology associated with measuring, managing, or improving heart function.")
Category.create(name: "Ultrasound",
				description: "All technology associated with ultrasound machines.")

# PRODUCTS:

Product.create(name: "X-Ray Chip", 
				image: "productImage1.jpg", 
				description: "This X-Ray chip is the most advanced in the world",
				category_id: 1, 
				manufacturer_id: 1, 
				vendor_id: 1, 
				sale_price: 50.00, 
				purchase_price: 129.99, 
				quantity_on_hand: 30)
Product.create(name: "Mini-Mobile X-Ray Machine Model 2", 
				image: "productImage2.jpg", 
				description: "The Mini-Mobile X-Ray Machine Model 2 is hands-down the best for your patients when you're on the go. This is the next generation model for 2016", 
				category_id: 1, 
				manufacturer_id: 1, 
				vendor_id: 2, 
				purchase_price: 2299.99, 
				quantity_on_hand: 10)
Product.create(name: "Full-Sized X-Ray Machine Model 4A",
				image: "productImage3.jpg",
				description: "This is the most vivid X-Ray model yet! Your patients deserve the most accurate test results!",
				category_id: 1,
				manufacturer_id: 1,
				vendor_id: 3,
				sale_price: 4050.99,
				purchase_price: 4799.99,
				quantity_on_hand: 10)
Product.create(name: "MRI Machine X-280 Chip",
				image: "productImage4.jpg", 
				description: "The new generate chip makes the MRI machine twice as fast!", 
				category_id: 2, 
				manufacturer_id: 1, 
				vendor_id: 4, 
				sale_price: 350.99, 
				purchase_price: 539.99, 
				quantity_on_hand: 15)
Product.create(name: "MRI Machine",
				image: "productImage5.jpg", 
				description: "This MRI Machine is the newest model around and completely new!", 
				category_id: 2, 
				manufacturer_id: 1, 
				vendor_id: 1, 
				sale_price: 5000.00, 
				purchase_price: 6549.99, 
				quantity_on_hand: 5)
Product.create(name: "MRI Spindel Drive",
				image: "productImage6.jpg", 
				description: "The spindel drive does some cryptic shit. No one knows what it is, but it's necessary.", 
				category_id: 2, 
				manufacturer_id: 1, 
				vendor_id: 2, 
				sale_price: 149.99, 
				purchase_price: 199.99, 
				quantity_on_hand: 10)
Product.create(name: "Heart Rate Monitor Model 480-X",
				image: "productImage7.jpg", 
				description: "This heart rate monitor is easy to configure and does other shit.", 
				category_id: 3, 
				manufacturer_id: 1, 
				vendor_id: 3, 
				sale_price: 1499.99, 
				purchase_price: 1699.99, 
				quantity_on_hand: 10)
Product.create(name: "DefiMax Biphasic Defibrillator",
				image: "productImage8.jpg", 
				description: "Bring your patients back to life with this amazing technology.", 
				category_id: 3, 
				manufacturer_id: 1, 
				vendor_id: 4, 
				sale_price: 1499.99, 
				purchase_price: 1699.99, 
				quantity_on_hand: 10)
Product.create(name: "Wearable Heart Rate Monitor",
				image: "productImage9.jpg", 
				description: "Give this to your patients to monitor their heart health at home!", 
				category_id: 3, 
				manufacturer_id: 1, 
				vendor_id: 1, 
				sale_price: 299.99, 
				purchase_price: 399.99, 
				quantity_on_hand: 10)
Product.create(name: "Mini-Mobile Ultrasound Machine",
				image: "productImage10.jpg", 
				description: "Use this to look at babies and shit inside of pregnant women.", 
				category_id: 4, 
				manufacturer_id: 1, 
				vendor_id: 2, 
				sale_price: 899.99, 
				purchase_price: 999.99, 
				quantity_on_hand: 10)
Product.create(name: "Ultrasound Platform Model 3A-340",
				image: "productImage11.jpg", 
				description: "The full package of Ultrasound technology to peer into the souls of your patients.", 
				category_id: 4, 
				manufacturer_id: 1, 
				vendor_id: 3, 
				sale_price: 1499.99, 
				purchase_price: 1699.99, 
				quantity_on_hand: 10)
Product.create(name: "Therapeutic Ultrasound Device Model 3M-68",
				image: "productImage12.jpg", 
				description: "Treating injuries like bursitis is no walk in the park tho. Use this to treat that stuff.", 
				category_id: 4, 
				manufacturer_id: 1, 
				vendor_id: 4, 
				sale_price: 899.99, 
				purchase_price: 1199.99, 
				quantity_on_hand: 10)



















