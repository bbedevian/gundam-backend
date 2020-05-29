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

User.create(name: "GM", balance: 100000, level: 0)

Gundam.create(name: "Zaku-1", attack: 200, hp: 500, 
    img_url: "https://www.pngkey.com/png/full/358-3589436_zaku-ii-armaments-origin-gundam-the-origin-.png", 
    rarity: "Basic", description: "Just another Zaku")

Gundam.create(name: "Zaku-2", attack: 400, hp: 650, 
    img_url: "https://vignette.wikia.nocookie.net/gundam/images/f/f6/Zaku_II_Thunderbolt-ova.png/revision/latest?cb=20160421133002", 
    rarity: "Basic", description: "Just another Zaku")

Gundam.create(name: "Graze Custom", attack: 600, hp: 1000, 
    img_url: "https://i.pinimg.com/originals/60/52/d5/6052d57f0cbaa80f858e09638ed97f74.png", 
    rarity: "Basic", description: "Bretts favorite from Gundam IBO")

Gundam.create(name: "Epyon", attack: 800, hp: 7500, 
    img_url: "https://vignette.wikia.nocookie.net/deathbattle/images/3/31/Moble_Suit_Gundam_Wing_-_Gundam_Epyon_as_an_Action_Figure.png/revision/latest/scale-to-width-down/340?cb=20160613110016", 
    rarity: "Epic", description: "Big Boss Ricky Ross")

Gundam.create(name: "Strike", attack: 100, hp: 700, price: 50,
    img_url: "https://www.pngkit.com/png/full/227-2275713_strike-gundam-mobile-suit-gundam-seed-battle-assault.png", 
    rarity: "basic", description: "Starter for all users")

Gundam.create(name: "Strike Freedom", attack: 200, hp: 1000, price: 150,
img_url: "https://www.kindpng.com/picc/b/177/1774211.png", 
rarity: "Mid", description: "Enhanced version of gundam Strike. Its a strike gundam with wings.")

Gundam.create(name: "Unicorn", attack: 250, hp: 1250, price: 200,
img_url: "https://cdn.shopify.com/s/files/1/2786/5582/products/pg-rx-0-unicorn-gundam-02_1_clipped_rev_1_1024x1024.png?v=1583634580", 
rarity: "Mid", description: "Go to tokyo and check out the lifesize version...")

Gundam.create(name: "Death Scythe", attack: 300, hp: 1500, price: 250,
img_url: "https://i.ya-webdesign.com/images/transparent-death-scythe-6.png", 
rarity: "Mid", description: "Joseph's favorite. That edgy guy thats always actin bad")

Gundam.create(name: "Exia", attack: 400, hp: 2000, price: 300,
    img_url: "https://pngimage.net/wp-content/uploads/2018/06/gundam-png-7.png", 
    rarity: "Epic", description: "Hes got those dope transparent pieces")

Gundam.create(name: "Wing Zero Custom", attack: 1000, hp: 5000, price: 500,
    img_url: "https://img.pngio.com/download-free-png-download-gundam-wing-zero-endless-waltz-gundam-wing-zero-png-1024_835.png", 
    rarity: "Legendary", description: "Destroys All other Gundams")


 Item.create(name: "Basic Sword", price: 20, attack_bonus: 50)
 Item.create(name: "Basic Gun", price: 25, attack_bonus: 60)
 Item.create(name: "Basic Shield", price: 20, hp_bonus: 200)

 Item.create(name: "Beam Sword", price: 50, attack_bonus: 75)
 Item.create(name: "Beam Rifle", price: 75, attack_bonus: 125)
 Item.create(name: "Energy Shield", price: 40, hp_bonus: 300)

 Item.create(name: "Beam Saber", price: 100, attack_bonus: 150)
 Item.create(name: "Beam Cannon", price: 150, attack_bonus: 225)
 Item.create(name: "Beam Shield", price: 80, hp_bonus: 500)

 Item.create(name: "Gun Blade Lance", price: 300, attack_bonus: 250)
 Item.create(name: "Hyper Altitude Cannon", price: 500, attack_bonus: 400)
 Item.create(name: "XZ-2051 Custom", price: 200, hp_bonus: 1000)


 Opponent.create(wave: Gundam.first.id)
 Opponent.create(wave: Gundam.second.id)
 Opponent.create(wave: Gundam.third.id)
 Opponent.create(wave: Gundam.fourth.id)
