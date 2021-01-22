# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([ username: "peter", email: "peter@gmail.com"])
User.create([ username: "sarah", email: "sarah@gmail.com"])
User.create([ username: "anna", email: "anna@gmail.com"])
User.create([ username: "jeanna", email: "jeanna@gmail.com"])
User.create([ username: "ben", email: "ben@gmail.com"])

Tweet.create([ text: "that's so hot", user_id: 1 ])
Tweet.create([ text: "3 hour drive daily", user_id: 2 ])
Tweet.create([ text: "gotta love CRUD", user_id: 3 ])
Tweet.create([ text: "hashbrowns are da bomb", user_id: 4 ])
Tweet.create([ text: "all about dat plant life", user_id: 5 ])
Tweet.create([ text: "decompose!", user_id: 1 ])
Tweet.create([ text: "coffee and coding", user_id: 2 ])
Tweet.create([ text: "love trumps hate", user_id: 3 ])
Tweet.create([ text: "jewelry sale!", user_id: 4 ])
Tweet.create([ text: "green thumbs up", user_id: 5 ])