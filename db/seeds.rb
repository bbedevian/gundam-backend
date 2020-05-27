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
Opponent.destroy_all


User.create(name: "Brett", balance: 50)

Gundam.create(name: "Strike Freedom", attack: 200, hp: 1000, 
    img_url: "https://www.kindpng.com/picc/b/177/1774211.png", 
    rarity: "epic", description: "Enhanced version of gundam Strike. Its a strike gundam with wings.")

Gundam.create(name: "Wing Zero Custom", attack: 1000, hp: 5000, 
    img_url: "https://i.etsystatic.com/15827791/r/il/d7073d/1883364185/il_1588xN.1883364185_sjga.jpg", 
    rarity: "Super Epic", description: "Destroys All other Gundams")

Gundam.create(name: "Zaku-1", attack: 200, hp: 500, 
    img_url: "https://www.pngkey.com/png/full/358-3589436_zaku-ii-armaments-origin-gundam-the-origin-.png", 
    rarity: "Basic", description: "Just another Zaku")

Gundam.create(name: "Zaku-2", attack: 600, hp: 800, 
    img_url: "https://www.pngkey.com/png/full/358-3589436_zaku-ii-armaments-origin-gundam-the-origin-.png", 
    rarity: "Basic", description: "Just another Zaku")

 UserGundam.create(user: User.first, gundam: Gundam.first)   
#  UserGundam.create(user: User.first, gundam: Gundam.last)   

 Item.create(name: "Sword", price: 25, attack_bonus: 50)
 Item.create(name: "gun", price: 25, attack_bonus: 100)
 Item.create(name: "shield", price: 20, hp_bonus: 250)


 Inventory.create(user: User.first, item: Item.first)   
 Inventory.create(user: User.first, item: Item.second) 

 Opponent.create(wave: Gundam.third.id)
 Opponent.create(wave: Gundam.last.id)
