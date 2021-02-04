# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Account.destroy_all
PiggyBank.destroy_all

me = User.create(name: "Kelsea", username:"kelsea_mc", password: "1234")
my_account = Account.create(name: "Bank of America", account_number: "1234567", total: 5000, user_id: me.id)

piggy2 = PiggyBank.create( user_id: me.id, goal: 8000, name: "Medical Fund", current_balance: 3000, category: "Emergency")