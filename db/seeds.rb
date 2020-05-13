# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  {username: "Adeja", password: "123", location: "NYC", bio: "Just a collector of things!"},
  {username: "Enoch", password: "123", location: "AR", bio: "Just a guy that blogs about technology."},
  {username: "Howard", password: "123", location: "NY", bio: "Collector of cars and things!"},
  {username: "Avi", password: "123", location: "CA", bio: "A seller of things!"},
  {username: "Micah", password: "123", location: "AZ", bio: "A Buyer of various goods."},
  {username: "Chris", password: "123", location: "VA", bio: "Former Marine that also sells things!"},
  {username: "Jennifer", password: "123", location: "MD", bio: "Avid destination visitor, and collect of things."},
  {username: "Jenna", password: "123", location: "NV", bio: "Recovering collector of things."},
  {username: "Natalie", password: "123", location: "CA", bio: "Not a buyer of things."},
  {username: "Joanna", password: "123", location: "UK", bio: "Also not a buyer of things."}
])

Listing.create([
  {item_name: "Macbook Pro", description: "2016 13' i7 8gb Ram 256gb SSD", price: 900.00, seller_id: 10, buyer_id: 1},
  {item_name: "iPhone Xr", description: "64gb Xr, unlocked", price: 600.00, seller_id: 9, buyer_id: 8},
  {item_name: "Samsung TV", description: "2017 50' UHD-4K Smart-TV 3-HDMI ports", price: 380.00, seller_id: 7, buyer_id: 6},
  {item_name: "Amazon FireTV Stick", description: "3rd Gen", price: 20.00, seller_id: 5, buyer_id: 4},
  {item_name: "Yakima Bike Rack", description: "Trunk mount 3-Bike Rack", price: 35.00, seller_id: 2, buyer_id: 3},
  {item_name: "Beats by Dre", description: "Solo 2 Wireless", price: 150.00, seller_id: 1, buyer_id: 10},
  {item_name: "HP Printer", description: "Model 6700 Wifi Printer", price: 80.00, seller_id: 8, buyer_id: 9},
  {item_name: "Spectre Monitor", description: "23' 60hz Flat-Panel Monitor", price: 40.00, seller_id: 6, buyer_id: 7},
  {item_name: "Canon Camera", description: "Digital SLR", price: 450.00, seller_id: 4, buyer_id: 5},
  {item_name: "Montecci Bike", description: " Vegter Carbon Fiber Road Bike", price: 2400.00, seller_id: 3, buyer_id: 2},
  {item_name: "iPad Pro", description: "2019 7th Gen 10.2' A2200 Purple", price: 550.00, seller_id: 10, buyer_id: 1},
  {item_name: "Sony Sound-Bar", description: "HTC-380 300 watt Wireless-Sub Bluetooth", price: 150.00, seller_id: 1, buyer_id: 2},
  {item_name: "Onkyo Home-Theater System", description: "HT-S7800 5.1.2 Dolby-Atmos Speakers", price: 535.00, seller_id: 3, buyer_id: 4},
  {item_name: "Nintendo Switch", description: "Super-Smash Bros. Ed. W/256Gb Micro-SD", price: 260.00, seller_id: 5, buyer_id: 6},
  {item_name: "Apple Magic Mouse", description: "2nd-Gen Bluetooth", price: 50.00, seller_id: 7, buyer_id: 8},
  {item_name: "Apple Wireless Keyboard", description: "2015 Model Aluminum", price: 55.00, seller_id: 9, buyer_id: 10},
  {item_name: "Apple Airpods", description: "1st-Gen", price: 90.00, seller_id: 10, buyer_id: 1},
  {item_name: "WD-NAS", description: "8Tb 2.5Ghz processor NAS", price: 370.00, seller_id: 9, buyer_id: 8},
  {item_name: "iPhone 11Max", description: "256Gb Unlocked", price: 999.00, seller_id: 7, buyer_id: 6},
  {item_name: "Custom Gaming Computer", description: "i7, 32Gb DDR3 Ram, Radeon-r9, 8Tb SSD", price: 480.00, seller_id: 5, buyer_id: 4},
  {item_name: "Dumbell-Set", description: "2x-45lbs, 4x-25lbs, 6x-10lbs, 4x-5lbs, 4x-2.5lbs", price: 250.00, seller_id: 2, buyer_id: 2},
  {item_name: "Baby-backpack", description: "Kelty baby-carrier", price: 70.00, seller_id: 1, buyer_id: 10}
])