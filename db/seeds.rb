# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Review.destroy_all
Activity.destroy_all
User.destroy_all

puts 'Creating user..'
user = User.create!(name: "Hugues", age: 27, sexe: "masculin", address: "Le Clos en Dendy, 31460 Vendine", email:
            "hugues.lambda@gmail.com", password: "123456", phone_number: "0607080910")
puts 'Finished!'

puts 'Creating activities..'
file = URI.open("https://babsbowling.com/wp-content/uploads/2021/09/BABS-BOWLING-VILLEFRANCHE13-980x656.jpg")
activity = Activity.new(name: "Le BAB'S", description: "Notre immense terrasse, des DJ pour des soirées estivales toujours plus
                festives", address: "1051 Bd Burdeau, 69400 Villefranche-sur-Saône", max_number_persons:
                10, price_cents: 800, workshop: "false", opening_days: [1, 2, 3, 4, 5, 6], open_at: "13:00", close_at:
                "01:00")
activity.photo.attach(io: file, filename: "babs.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.uY0bZs5xtXgSqDFOaJ6IZAHaE7&pid=Api")
activity = Activity.new(name: "Le Louchebem", description: "Ce restaurant typique et familial, tenu par un boucher, privilégie
                la viande et les produits du marché.", address: "3 Pl. Victor Hugo, 31000 Toulouse", start_at:
                "monday", end_at: "saturday", max_number_persons: 130, workshop: "false", opening_days:
                [1, 2, 3, 4, 5, 6], open_at: "15:00", close_at: "02:00")
activity.photo.attach(io: file, filename: "louchebem.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.hHuU9_uOThLtb_7QUS15-AHaE7&pid=Api")
activity = Activity.new(name: "Delirium Café Toulouse", description: "Bar décontracté avec bière à la pression. Mobilier décalé
  et plusieurs espaces où s’asseoir en extérieur.", address:
  "54 All. Jean Jaurès, 31000 Toulouse", max_number_persons: 56, workshop: "false", opening_days:
  [0, 1, 2, 3, 4, 5, 6], open_at: "16:00", close_at: "01:00")
activity.photo.attach(io: file, filename: "delirium.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.u-9BJFnpEX5O500lV-MsWgHaE8&pid=Api")
activity = Activity.new(name: "L’alimentation", description: "Une cuisine gourmande et conviviale a L’Alimentation : Restaurant,
  foodstore, épicerie, bar à vin, cours de cuisine à Toulouse et Labège.", address: "3 bis Rue Maurice
  Fonvieille, 31000 Toulouse", max_number_persons: 15, price_cents: 4500, workshop: "true", opening_days:
  [3], start_at: "20:00", end_at: "22:30")
activity.photo.attach(io: file, filename: "alimentation.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.GHmii6x-Rkd0wkQ3r-dc6AHaGY&pid=Api")
activity = Activity.new(name: "Au WC. Wine And Coffee", description: "Depuis 5 ans, les anciennes toilettes publiques de
  Poitiers se sont transformées en un bar à vins et bar à tapas.", address: "4 Pl. Charles de Gaulle,
  86000 Poitiers", max_number_persons: 80, workshop: "false", opening_days:
  [0, 1, 2, 3, 4, 5, 6], open_at: "16:00", close_at: "02:00")
activity.photo.attach(io: file, filename: "WC.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse2.mm.bing.net/th?id=OIP.a2_HkKuJXfnMeRtdcnhC5QHaE8&pid=Api")
activity = Activity.new(name: "Patinoire Charlemagne", description: "D’une capacité publique de 4 200 personnes, la patinoire
  reçoit aussi des spectacles sur glace et des compétitions internationales et nationales.", address:
  "Patinoire Charlemagne, 100 Cr Charlemagne, 69002 Lyon", max_number_persons: 4200, price_cents: "between
  400 and 780", workshop: "false", opening_days: [4, 5, 6, 0], open_at: "14:00", close_at: "23:00")
activity.photo.attach(io: file, filename: "Patinoire.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.y6WbQIPfUCisPBN8CFAShQHaFg&pid=Api")
activity = Activity.new(name: "Piscine Joséphine Baker", description: "La piscine de Paris 13 Joséphine Baker dispose d’un
  espace aquatique, d’un espace bien-être et d’un espace forme avec tous les équipements nécessaires pour
  plaire à toute la famille. Le plus ? La vue sur la Seine lorsque vous vous baignez !", address:
  "Quai François Mauriac, 75013 Paris", workshop: "false", max_number_persons: 350, price_cents:
  350, opening_days: [3, 4, 5, 6], open_at: "14:00", close_at: "23:00")
activity.photo.attach(io: file, filename: "Josephine.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.LyS3OmwWLQ2O5jYDikaRDwHaFj&pid=Api")
activity = Activity.new(name: "Last Door Escape Game", description: "Injustement emprisonnés, votre procès vient de connaître
  l’issue que vous craigniez : vous êtes définitivement condamnés à la peine capitale. Il ne vous reste
  maintenant plus qu’une heure avant l’injection létale. Arriverez-vous à vous en échapper ?", address:
  "24 Rue Jules Vedrines, 42160 Andrézieux-Bouthéon", workshop: "false", max_number_persons:
  6, price_cents: 2500, opening_days: [0, 1, 2, 3, 4, 5, 6], start_at: "9:00", close_at: "22:30")
activity.photo.attach(io: file, filename: "Escape.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse4.mm.bing.net/th?id=OIP.KKKF5IlWi7zofPLUE-jpHAHaE8&pid=Api")
activity = Activity.new(name: "La Quiz Room", description: "Entre amis ou en famille… 2 parties (ou +) pour découvrir ou
  redécouvrir Quiz Room et ses jeux totalement quiz !", address:
  "81 Rue Lucien Faure - 33300 Bordeaux", workshop: "false", opening_days:
  [0, 1, 2, 3, 4, 5, 6], start_at: "10:00", close_at: "23:30")
activity.photo.attach(io: file, filename: "Quiz.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.FTLIVWOg2mnnPVqsb6_5JQHaE8&pid=Api")
activity = Activity.new(name: "Seven Squares", description: "Avec nos 7 activités pour tous les âges, variez les plaisirs sans
  vous déplacer ! Venez en famille, entre amis et partagez un moment convivial. ", address:
  "2 Rue Ferrer, 42000 Saint-Étienne", workshop: "false", max_number_persons: 200, opening_days:
  [0, 1, 2, 3, 4, 5, 6], start_at: "10:00", close_at: "2:00")
activity.photo.attach(io: file, filename: "Seven.png", content_type: "image/png")
activity.user = user
activity.save!

puts 'Finished!'
