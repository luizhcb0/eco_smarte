# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Text.create(
  content: "The ECOsmarte cloud is designated for users to monitor the status of their swimming pools and other devices while on the go. 
    The cloud will help in viewing and regulating pH and copper levels and keep customers regularly updated. 
    Please Log In using the menu bar at the top of the screen and create a profile for your pool and begin to track and enter data.", 
  description: "description"
)

User.create(user_type: "admin", name: "Luiz", email: "luizhcb0@gmail.com", phone: "1231231234", address: "Brasilia", city: "Brasil", password: "111111", postal_code: "111111")