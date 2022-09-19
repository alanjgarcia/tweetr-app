# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Jeremy", email: "dimes@test.com", password: "password", image: "gsdanf")
User.create(name: "Gita", email: "gita@test.com", password: "cat", image: "sgasdg")
User.create(name: "Alan", email: "alan@test.com", password: "dog", image: "dsafd")

Relationship.create(leader_id: 2, follower_id: 1)
Relationship.create(leader_id: 2, follower_id: 3)
Relationship.create(leader_id: 1, follower_id: 2)

Tweet.create(user_id: 2, text: "Omg hi")
Tweet.create(user_id: 2, text: "Lol")
Tweet.create(user_id: 2, text: "I had cereal today. Yum.")
Tweet.create(user_id: 1, text: "Omg hey")
