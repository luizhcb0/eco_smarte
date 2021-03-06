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

PoolModel.create(description: "Standard Turbo System")
PoolModel.create(description: "Programmable with CO2")
PoolModel.create(description: "WIFI Programmable with CO2")
PoolModel.create(description: "Standard Spa System")
PoolModel.create(description: "Programmable Pond System")

User.create(user_type: "admin", name: "Admin Eco", email: "admin@ecosmarte.com", phone: "1231231234", address: "North Wintrop", city: "Chicago", password: "111111", postal_code: "111111")
User.create(user_type: "admin", name: "Larry", email: "larryc@ecosmarte.com", phone: "1231231234", address: "Richfield", city: "Minneapolis", password: "111111", postal_code: "111111")
User.create(user_type: "user", name: "Luiz", email: "luiz@ecosmarte.com", phone: "1231231234", address: "Brasilia", city: "Brasil", password: "111111", postal_code: "111111")
User.create(user_type: "company", name: "Ben", email: "ben@ecosmarte.com", phone: "1231231234", address: "Brasilia", city: "Brasil", password: "111111", postal_code: "111111")