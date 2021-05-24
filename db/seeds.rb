# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(username: "RAD", email: "rad2021rmit@gmail.com", password: "Rails2021", password_confirmation: "Rails2021")
Customer.create(username: "Test", email: "test@test.com", password: "test1234", password_confirmation: "test1234")

collection1 = Collection.create(name: "men")
collection2 = Collection.create(name: "women")
collection3 = Collection.create(name: "kids")
collection4 = Collection.create(name: "new-arrival")

product1 = Product.create(name: "sweater", price: 59.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')
product2 = Product.create(name: "scarf", price: 29.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/11/10/16049791088df925508c3374ef963f69088ac53c2e_thumbnail_900x.webp')
product3 = Product.create(name: "sunglasses", price: 19.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2021/02/20/1613798759870dd8213ec2cb099704704ae0451640_thumbnail_900x.webp')
product4 = Product.create(name: "socks", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/09/16/16002345759c206eda8fadcac0f8300418c6bd103a_thumbnail_900x.webp')
product5 = Product.create(name: "dress", price: 12.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/09/03/159910337108cbd8cfcb9bec88ebc76ca68485c6fc_thumbnail_900x.webp')
product6 = Product.create(name: "blouse", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images2_pi/2019/06/19/15609352882870382105_thumbnail_900x1199.webp')
product7 = Product.create(name: "bra", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/10/16/160281257288b1e1a9f416c86bc7e94b24948d5ac5_thumbnail_405x552.webp')
product8 = Product.create(name: "shirt", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2021/01/11/1610354205b13f4904ea0554c91036b266b9a07d47_thumbnail_900x.webp')
product9 = Product.create(name: "suit", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2021/01/14/1610595957599a08f46466909479a5fc8fb9f16d49_thumbnail_900x.webp')
product10 = Product.create(name: "jacket", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/09/02/15990299695984e7f352fa00a6dfdf8e19663bee06_thumbnail_900x.webp')
product11 = Product.create(name: "hoodies", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images2_pi/2019/07/29/15643771971251108910_thumbnail_900x1199.webp')
product12 = Product.create(name: "pajama", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2021/02/03/16123415925290896b3ff06b24f5fb7bbb0d3ac932_thumbnail_900x.webp')
product13 = Product.create(name: "kids-shirt", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2020/03/13/158407693005673b6806b1f8fba8bfc1ac8a03f6de_thumbnail_900x.webp')
product14 = Product.create(name: "leather-jacket", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images2_pi/2018/09/21/15374945152231169113_thumbnail_900x1199.webp')
product15 = Product.create(name: "pants", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2021/05/11/162069777956e9a3207d079ec3b394dab2d514e27b_thumbnail_900x.webp')
product16 = Product.create(name: "hat", price: 9.99, imagelink: 'https://img.ltwebstatic.com/images3_pi/2019/11/13/1573640135e68129d9024bb7c79405dae3a123c29a_thumbnail_900x.webp')


collection1.products << product1
collection1.products << product8
collection1.products << product9
collection1.products << product10


collection2.products << product2
collection2.products << product5
collection2.products << product6
collection2.products << product7

collection3.products << product4
collection3.products << product11
collection3.products << product12
collection3.products << product13

collection4.products << product3
collection4.products << product14
collection4.products << product15
collection4.products << product16

product1.photos.create(image: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')
product1.photos.create(image: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')
product1.photos.create(image: 'https://img.ltwebstatic.com/images3_pi/2020/11/30/160670329606c3de9a050654c5037e5cc0522ba92e_thumbnail_900x.webp')