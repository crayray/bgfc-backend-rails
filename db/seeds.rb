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

#Events
casacolumbia= Event.create(date:"January 18th", time:"12:00PM", location_name:"Casa Columbia" )

#Rsvps
rsvp1= Rsvp.create(user_id:rachel.id, event_id:casacolumbia.id)

#Restaurants
restaurant1 = Restaurant.create(about:"Columbian Food", address:'E 7th street', yelp:"Yelp URL", google:"google url", site: "site url", event_id: casacolumbia.id)