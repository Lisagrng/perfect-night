# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.delete_all
Activity.delete_all

puts 'Creating user..'
User.create!(name: "Hugues", age: 27, sexe: "masculin", address: "Le Clos en Dendy, 31460 Vendine", email:
            "hugues.lambda@gmail.com", password: "123456", phone_number: "0607080910")
puts 'Finished!'

puts 'Creating activities..'
Activity.create!(name: "Le BAB'S", description: "Notre immense terrasse, des DJ pour des soirées estivales toujours plus
                festives", address: "1051 Bd Burdeau, 69400 Villefranche-sur-Saône", max_number_persons: 10,
                 price_cents: 800, workshop: "false", opening_days: [1, 2, 3, 4, 5, 6], open_at: "13:00", close_at:
                "01:00")
Activity.create!(name: "Le Louchebem", description: "Ce restaurant typique et familial, tenu par un boucher, privilégie
                la viande et les produits du marché.", address: "3 Pl. Victor Hugo, 31000 Toulouse", start_at:
                "monday", end_at: "saturday", max_number_persons: 130, workshop: "false", opening_days:
                [1, 2, 3, 4, 5, 6], open_at: "15:00", close_at: "02:00")
puts 'Finished!'
