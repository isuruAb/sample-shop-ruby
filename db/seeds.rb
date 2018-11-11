# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    User.create!(
        name: Faker::Internet.email, 
        password:Faker::Code.imei, 
        last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))
end
User.create!(
name: "isuru", 
password:"password", 
isAdmin: true,
last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))
User.create!(
name: "isuru1", 
password:"password", 
isAdmin: false,
last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))
imagesArray=[
    "https://cdn.shopify.com/s/files/1/2201/6013/collections/Jewellery-PS6801-1000-ES6101-2000_350x350_crop_center@2x.jpg?v=1517289436",
    "https://images-eu.ssl-images-amazon.com/images/I/6156in5PV9L._SY300_QL70_.jpg",
    "https://michaellevinjewellers.co.uk/images/Pearl.jpg",
    "https://5.imimg.com/data5/NE/HQ/MY-1107937/indian-diamond-jewelry-gold-diamond-jewelry-500x500.jpg"
]
user_ids=User.ids
2.times do
    Product.create!(
        name: Faker::Name.name, 
        description: "Sed vulputate, ligula ut porta pharetra, lorem tellus tempor mi, aliquam blandit nulla mauris et nisl. Pellentesque nec volutpat enim. Donec fermentum ornare gravida. Nam luctus lacus lectus. Donec quis risus ut ante viverra tristique. Nam sagittis nibh vel rhoncus fermentum. In scelerisque, mi vitae egestas efficitur, ipsum urna mattis tellus, sed sodales risus mi id arcu. In hac habitasse platea dictumst.", 
        tags: "gold,white",
        price: 2000000,
        # images: "https://cdn.shopify.com/s/files/1/2201/6013/collections/Jewellery-PS6801-1000-ES6101-2000_350x350_crop_center@2x.jpg?v=1517289436,https://images-eu.ssl-images-amazon.com/images/I/6156in5PV9L._SY300_QL70_.jpg",
        stock: 12,
        user_id: 6)
end

product_ids=Product.ids
4.times do
    Image.create!(
        url:  imagesArray.sample,
        product_id: product_ids.sample
        )
end
Tag.create!(name: "Gold", )
Tag.create!(name: "White Gold", )
Tag.create!(name: "Pink Gold", )
Tag.create!(name: "Gems", )
Tag.create!(name: "Diaamonds", )