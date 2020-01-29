# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
rachel= User.create(name:"rachel", email:"rach@gmail.com", password_digest: "1234")



#Profiles
rachelProfile= Profile.create(name:"rachel", about:"Super rad engineer", interest1:"Hiking", instagram:"hermione_g", facebook:"rachfuerst", twitter:"askmenever", linkedin: "rachfuerst",user_id: rachel.id)
