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
                festives", address: "1051 Bd Burdeau, 69400 Villefranche-sur-Saône", max_number_persons:
                10, price_cents: 800, workshop: "false", opening_days: [1, 2, 3, 4, 5, 6], open_at: "13:00", close_at:
                "01:00")
Activity.create!(name: "Le Louchebem", description: "Ce restaurant typique et familial, tenu par un boucher, privilégie
                la viande et les produits du marché.", address: "3 Pl. Victor Hugo, 31000 Toulouse", start_at:
                "monday", end_at: "saturday", max_number_persons: 130, workshop: "false", opening_days:
                [1, 2, 3, 4, 5, 6], open_at: "15:00", close_at: "02:00")
Activity.create!(name: "Delirium Café Toulouse", description: "Bar décontracté avec bière à la pression. Mobilier décalé
                et plusieurs espaces où s'asseoir en extérieur.", address:
                "54 All. Jean Jaurès, 31000 Toulouse", max_number_persons: 56, workshop: "false", opening_days:
                [0, 1, 2, 3, 4, 5, 6], open_at: "16:00", close_at: "01:00")
Activity.create!(name: "L'alimentation", description: "Une cuisine gourmande et conviviale a L'Alimentation : Restaurant,
                foodstore, épicerie, bar à vin, cours de cuisine à Toulouse et Labège.", address: "3 bis Rue Maurice
                Fonvieille, 31000 Toulouse", max_number_persons: 15, price_cents: 4500, workshop: "true", opening_days:
                [3], start_at: "20:00", end_at: "22:30")
Activity.create!(name: "Au WC. Wine And Coffee", description: "Depuis 5 ans, les anciennes toilettes publiques de
                Poitiers se sont transformées en un bar à vins et bar à tapas.", address: "4 Pl. Charles de Gaulle,
                86000 Poitiers", max_number_persons: 80, workshop: "false", opening_days:
                [0, 1, 2, 3, 4, 5, 6], open_at: "16:00", close_at: "02:00")
Activity.create!(name: "Patinoire Charlemagne", description: "D'une capacité publique de 4 200 personnes, la patinoire
                reçoit aussi des spectacles sur glace et des compétitions internationales et nationales.", address:
                "Patinoire Charlemagne, 100 Cr Charlemagne, 69002 Lyon", max_number_persons: 4200, price_cents: "between
                400 and 780", workshop: "false", opening_days: [4, 5, 6, 0], open_at: "14:00", close_at: "23:00")
puts 'Finished!'
