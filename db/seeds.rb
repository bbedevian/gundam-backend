# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Gundam.destroy_all
Item.destroy_all
UserGundam.destroy_all 
Inventory.destroy_all 


User.create(name: "Brett", balance: 50)

Gundam.create(name: "Strike Freedom", attack: 200, hp: 1000, 
    img_url: "https://cdn.shopify.com/s/files/1/0727/8355/products/61fhjHtZi7L._SL1500_900x900.jpg?v=1569526131", 
    rarity: "epic", description: "Enhanced version of gundam Strike. Its a strike gundam with wings.")

Gundam.create(name: "Wing Zero Custom", attack: 1000, hp: 5000, 
    img_url: "https://i.etsystatic.com/15827791/r/il/d7073d/1883364185/il_1588xN.1883364185_sjga.jpg", 
    rarity: "Super Epic", description: "Destroys All other Gundams")

 UserGundam.create(user: User.first, gundam: Gundam.first)   
 UserGundam.create(user: User.first, gundam: Gundam.last)   

 Item.create(name: "Sword", price: 25)
 Item.create(name: "gun", price: 25)
 Item.create(name: "shield", price: 20)


 Inventory.create(user: User.first, item: Item.first)   
 Inventory.create(user: User.first, item: Item.second)  
