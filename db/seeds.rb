# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
user1 = User.create(id: 1, name: "Abdoul Diallo", age: 21, gender: "male", city: "Bronx, NY", email: "committed1@gmail.com", password_digest: "123456")

user2 = User.create(id: 2, name: "Anum Siddiqui", age: 18, gender: "male", city: "Bronx, NY", email: "anum@gmail.com", password_digest: "123456")

user3 = User.create(id: 3, name: "Faraz Hafiz", age: 19, gender: "male", city: "Bronx, NY", email: "faraz@gmail.com", password_digest: "123456")

user4 = User.create(id: 4, name: "Marie Sanko", age: 20, gender: "male", city: "Bronx, NY", email: "marie@gmail.com", password_digest: "123456")

user5 = User.create(id: 5, name: "Shawn Koski", age: 23, gender: "male", city: "Bronx, NY", email: "shawn@gmail.com", password_digest: "123456")

# DEALS

deal1 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user1.id, category: "Food & Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal2 = Deal.create(title: "50% OFF Lunch", location: "DUMBO Kitchen", expiration_date: "July 31 2018", image: "#", total_votes: 1300, poster_id: user1.id, category: "Food & Beverages", description: "You can get 50% Off your lunch everyday until the 31st of July!")

deal3 = Deal.create(title: "30% Off Membership", location: "WeWork NYC", expiration_date: "August 15 2018", image: "#", total_votes: 3897, poster_id: user2.id, category: "Other", description: "WeWork is the place to be! Amazing environment for small businesses.")

deal4 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user3.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal5 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user4.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal6 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user5.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal7 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user3.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal8 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user4.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal9 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user3.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")

deal10 = Deal.create(title: "50% OFF 12-Pk of 8oz Cans RedBull", location: "DUMBO", expiration_date: "July 15 2018", image: "https://img.coopathome.ch/produkte/880_880/RGB/3400410_001.jpg?_=1487595897873", total_votes: 1235, poster_id: user2.id, category: "Beverages", description: "You can get a pack of 12 RedBulls for only $8. Great deal for RedBull lovers!")


# COMMENTS

comment1 = Comment.create(user_id: user1.id, deal_id: deal1.id, content: "just another comment")

comment2 = Comment.create(user_id: user1.id, deal_id: deal1.id, content: "just another other comment")

comment3 = Comment.create(user_id: user1.id, deal_id: deal2.id, content: "And another comment")

comment4 = Comment.create(user_id: user2.id, deal_id: deal2.id, content: "just another other other comment")

comment5 = Comment.create(user_id: user3.id, deal_id: deal1.id, content: "coment coming comment")

comment6 = Comment.create(user_id: user4.id, deal_id: deal4.id, content: "just c'mon comment")

comment7 = Comment.create(user_id: user4.id, deal_id: deal3.id, content: "just another comment")

comment8 = Comment.create(user_id: user5.id, deal_id: deal5.id, content: "just come other comment")

comment9 = Comment.create(user_id: user5.id, deal_id: deal2.id, content: "And a another comment")

comment10 = Comment.create(user_id: user2.id, deal_id: deal5.id, content: "And another other other comment")

# VOTES

vote1 = Vote.create(user_id: user2.id, deal_id: deal5.id)

vote2 = Vote.create(user_id: user1.id, deal_id: deal1.id)

vote3 = Vote.create(user_id: user3.id, deal_id: deal1.id)

vote4 = Vote.create(user_id: user4.id, deal_id: deal1.id)

vote5 = Vote.create(user_id: user5.id, deal_id: deal2.id)

vote6 = Vote.create(user_id: user1.id, deal_id: deal2.id)

vote7 = Vote.create(user_id: user2.id, deal_id: deal2.id)

vote8 = Vote.create(user_id: user3.id, deal_id: deal3.id)

vote9 = Vote.create(user_id: user4.id, deal_id: deal4.id)

vote10 = Vote.create(user_id: user5.id, deal_id: deal5.id)

vote11 = Vote.create(user_id: user1.id, deal_id: deal6.id)

vote12 = Vote.create(user_id: user2.id, deal_id: deal6.id)
