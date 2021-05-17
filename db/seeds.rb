# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cart = Cart.create()

collection1 = Collection.create(name: "men")
collection2 = Collection.create(name: "women")
collection3 = Collection.create(name: "kids")
collection4 = Collection.create(name: "new-arrival")
collection5 = Collection.create(name: "savedlist")

product1 = Product.create(name: "sweater", price: 59.99, popularity: 2, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')
product2 = Product.create(name: "scarf", price: 29.99, popularity: 1, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/11/10/16049791088df925508c3374ef963f69088ac53c2e_thumbnail_900x.webp')
product3 = Product.create(name: "sunglasses", price: 19.99, popularity: 7, imagelink: 'https://img.ltwebstatic.com/images3_pi/2021/02/20/1613798759870dd8213ec2cb099704704ae0451640_thumbnail_900x.webp')
product4 = Product.create(name: "socks", price: 9.99, popularity: 9, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/09/16/16002345759c206eda8fadcac0f8300418c6bd103a_thumbnail_900x.webp')

collection1.products << product1
collection1.products << product4
collection3.products << product4
collection4.products << product3
collection2.products << product2

product1.photos.create(image: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')
product1.photos.create(image: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')
product1.photos.create(image: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')

Customer.create!(username:  "RAD",email: "rad2021rmit@gmail.com",password: "Rails2021",password_confirmation: "Rails2021")
