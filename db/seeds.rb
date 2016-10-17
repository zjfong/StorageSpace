# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

logout
User.destroy_all
Space.destroy_all

user1 = User.create({name: "Zach Fong", email: "zach@gmail.com", password: "password"})
user2 = User.create({name: "Alicia Brown", email: "alicia@gmail.com", password: "password"})
user3 = User.create({name: "Andrew Vinocur", email: "andrew@gmail.com", password: "password"})
user4 = User.create({name: "Test Person", email: "test@gmail.com", password: "password"})
user5 = User.create({name: "Scott Whitman", email: "scott@gmail.com", password: "password"})
user6 = User.create({name: "Admin Person", email: "admin@gmail.com", password: "admin"})
user6.admin = true
user6.save

space1 = Space.create({user_id: 1, title: "Zach Test Listing", price: 20, street_address: "1000 Sample Rd", city: "San Francisco", state: "CA", zip_code: "945394", size: 20, available: true, photo: "http://l18airpark.com/l18_airpark_images/10%20x%2012.jpg", description: "Cool and well lit space in a closet"})
space2 = Space.create({user_id: 2, title: "Alicia Test Listing", price: 25, street_address: "1001 Sample Rd", city: "San Francisco", state: "CA", zip_code: "945394", size: 25, available: true, photo: "https://s3.amazonaws.com/static.carthrottle.com/workspace/uploads/posts/2016/01/bb342fad2f92b90fde5eafcd322ad3b0.jpg", description: "Great space in the back corner of a garage"})
space3 = Space.create({user_id: 3, title: "Andrew Test Listing", price: 30, street_address: "1002 Sample Rd", city: "San Francisco", state: "CA", zip_code: "945394", size: 30, available: true, photo: "http://l18airpark.com/l18_airpark_images/10%20x%2012.jpg", description: "Great space in my storage unit on Geary"})

p "Seeds have been updated"

# space1 = Space.create({user_id: "", })
#
#
# create_table "spaces", force: :cascade do |t|
#   t.integer  "user_id"
#   t.string   "title"
#   t.integer  "price"
#   t.string   "address"
#   t.integer  "size"
#   t.boolean  "available"
#   t.string   "photo"
#   t.string   "status"
#   t.string   "description"
#   t.datetime "created_at",  null: false
#   t.datetime "updated_at",  null: false
# end
