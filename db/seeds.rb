# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def bycrypt(password)
  pass = BCrypt::Password.create(password)
end

user1 = User.create(
  username: "Laban",
  password_digest: bycrypt("@emkay12"),
  role: "admin",
  phone: 742075647
)

user2 = User.create(
  username: "Kyai",
  password_digest: bycrypt("@user12"),
  role: "user",
  phone: 742075647
)


user3 = User.create(
  username: "Emkay",
  password_digest: bycrypt("@temp12"),
  role: "user",
  phone: 742075647
)

product1 = Product.create(
  name: 'Chicken Grilled Healthy',
  image: 'https://cdn.pixabay.com/photo/2014/12/30/09/55/chicken-583761_960_720.jpg',
  description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
  price: 340,
  amount: 3
)

product2 = Product.create(
  name: 'Chicken Breast Salad Healthy',
  image: 'https://cdn.pixabay.com/photo/2017/09/06/20/07/chicken-2722818_960_720.jpg',
  description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
  price: 240,
  amount: 5
)

product3 = Product.create(
  name: 'Breast Salad Healthy',
  image: 'https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_960_720.jpg',
  description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
  price: 540,
  amount: 2
)

product4 = Product.create(
  name: 'Chicken Breast Biryiani Healthy',
  image: 'https://cdn.pixabay.com/photo/2017/09/06/20/07/chicken-2722818_960_720.jpg',
  description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
  price: 300,
  amount: 5
)



order1 = Order.create(
  user_id: user2.id,
  quantity: 1,
  product_id: product2.id,
  status: "pending"
)


order2 = Order.create(
  user_id: user3.id,
  quantity: 1,
  product_id: product2.id,
  status: "pending"
)



order3 = Order.create(
  user_id: user2.id,
  quantity: 3,
  product_id: product2.id,
  status: "pending"
)


order1 = Order.create(
  user_id: user3.id,
  quantity: 1,
  product_id: product1.id,
  status: "pending"
)



# Product.create{
#   [
#     {
#       name: "Chicken Grilled Healthy",
#       image: "https://cdn.pixabay.com/photo/2014/12/30/09/55/chicken-583761_960_720.jpg",
#       description: "Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love",
#       price: 340,
#       amount: 3
#     },
#     {
#       name: 'Chicken Breast Salad Healthy',
#       image: "https://cdn.pixabay.com/photo/2017/09/06/20/07/chicken-2722818_960_720.jpg",
#       description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
#       price: 240,
#       amount: 5
#     },
#     {
#       name: 'Breast Salad Healthy',
#       image: 'https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_960_720.jpg',
#       description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
#       price: 540,
#       amount: 2
#     },
#     {
#       name: 'Chicken Breast Biryiani Healthy',
#       image: 'https://cdn.pixabay.com/photo/2017/09/06/20/07/chicken-2722818_960_720.jpg',
#       description: 'Image toast weueh, salad mayoniece, droplets of facius liqudity with ambinguity of warmw mamas love',
#       price: 300,
#       amount: 5
#     }
#   ]
# }

# User.create