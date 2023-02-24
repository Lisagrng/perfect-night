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
file = URI.open("https://babsbowling.com/wp-content/uploads/2021/10/babs-biere-1-980x656.jpg")
activity = Activity.new(name: "LE BAB'S", description: "Notre immense terrasse, des DJ pour des soirées estivales
                toujours plus festives", address: "1051 Bd Burdeau, 69400 Villefranche-sur-Saône", max_number_persons:
                10, price_cents: 800, workshop: "false", opening_days: [1, 2, 3, 4, 5, 6], open_at: "13:00", close_at:
                "01:00", ville: "Villefranche-sur-Saône", categorie: "Bowling", program: "Venez au BAB'S et profitez de
                nos 10 pistes de bowling avec ambiance fluo et canapé! De plus, un large choix de bières sera la pour
                vous désaltérer - retrouvez plus de 10 bières en pression, des cocktails avec ou sans alcool, des
                shooters et bien d'autres! Mais surtout notre Happy Hour de 17h à 20h!
                Enfin, si vous avez un creux, nous vous retrouverons au restaurant afin de vous délecter de burgers
                maison, Tapas, Fish&Chip's, salade, tartare de boeuf et encore bien des surprises!")
activity.photo.attach(io: file, filename: "babs.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://u.tfstatic.com/restaurant_photos/075/30075/169/612/284ce2a3e91979f31a2f9bed19935b71.jpg")
activity = Activity.new(name: "LE LOUCHEBEM", description: "Ce restaurant typique et familial, tenu par un boucher,
                privilégie la viande et les produits du marché.", address: "3 Pl. Victor Hugo, 31000 Toulouse",
                        max_number_persons: 130, workshop: "false", opening_days: [1, 2, 3, 4, 5, 6], open_at: "15:00",
                        close_at: "02:00", ville: "Toulouse", categorie: "Restaurant", program: "Venez au Louchebem, la
                cuisine française y est bien préparée! Ne partez pas sans avoir apprécié un parfait cuit à la perfection
                . Un vin de maison délicieux fait parti des boissons les plus savoureuses à déguster. Après une longue
                semaine de travail, vous pouvez goûter un café immense! Cet endroit est si bien placé qu'on peut y
                accéder en utilisant n'importe quel transport! Un personnel gracieux montre un haut niveau d'hospitalité
                dans ce restaurant qui sauront vous ravir!")
activity.photo.attach(io: file, filename: "louchebem.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.5mQu492dizV6Y25do8MWvAHaD3&pid=Api")
activity = Activity.new(name: "DELIRIUM CAFÉ TOULOUSE", description: "Bar décontracté avec bière à la pression. Mobilier
                décalé et plusieurs espaces où s’asseoir en extérieur.", address: "54 All. Jean Jaurès, 31000 Toulouse",
                        max_number_persons: 56, workshop: "false", opening_days: [0, 1, 2, 3, 4, 5, 6], open_at:
                "16:00", close_at: "01:00", ville: "Toulouse", categorie: "Bar", program: "2ème plus grand bar à bières
                de France avec 48 tirages pressions et plus de 500 références en bouteilles. Le lieu où les bières
                belges incontournables côtoient les bières artisanales locales pour que chaque amateur de houblon puisse
                y trouver son bonheur! Une terrasse extérieure et un patio intérieur pour boire une pinte au soleil et
                partager quelques tapas en plein coeur de Toulouse. Il se passe toujour quelque chose au Délirium Café
                Toulouse : retransmission des plus grands évènements sportifs (foot, rugby…), blindtest, quiz, soirées
                célibataires, tournoi de beer pong, tournoi de Mario kart… La fête du lundi au dimanche, toute l’année
                !")
activity.photo.attach(io: file, filename: "delirium.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://static.actu.fr/uploads/2020/02/photo-alimentation-message-html-960x640.jpg")
activity = Activity.new(name: "L'ALIMENTATION", description: "Une cuisine gourmande et conviviale a L’Alimentation :
                Restaurant, foodstore, épicerie, bar à vin, cours de cuisine à Toulouse et Labège.", address: "3 bis Rue
                Maurice Fonvieille, 31000 Toulouse", max_number_persons: 15, price_cents: 4500, workshop: "true",
                        opening_days: [3], start_at: "20:00", end_at: "22:30", ville: "Toulouse", categorie:
                "Restaurant", program: "Depuis l’ouverture du premier établissement en 2015, nous avons toujours eu à
                cœur de vous faire découvrir le travail des artisans et des vignerons avec qui nous travaillons.
                L’Alimentation c’est plus qu’un restaurant, c’est une approche différente des plaisirs de la table et de
                la convivialité. Qu’il s’agisse de venir savourer notre cuisine dans un de nos établissements pour un
                déjeuner avec vos collègues, prendre un verre entre amis autour d’un diner, ou pour  suivre des ateliers
                de cuisine animés par des chefs venus de toute la France, nous vous proposons des lieux pour toutes vos
                occasions. Et si vous avez aimé et que vous souhaitez faire découvrir notre univers à vos amis, vous
                pourrez même venir retrouver dans notre Cave, toutes les petites merveilles que nous sommes allés
                dénicher pour vous, auprès de nos vignerons préférés.")
activity.photo.attach(io: file, filename: "alimentation.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://sgc.lapetiteroquette-pizzeria.com/cdn/maqv6qv73945/gallery_picture_6.jpg")
activity = Activity.new(name: "AU WC. WINE AND COFFEE", description: "Depuis 5 ans, les anciennes toilettes publiques de
                Poitiers se sont transformées en un bar à vins et bar à tapas.", address: "4 Pl. Charles de Gaulle,
                86000 Poitiers", max_number_persons: 80, workshop: "false", opening_days: [0, 1, 2, 3, 4, 5, 6],
                        open_at: "16:00", close_at: "02:00", ville: "Poitiers", categorie: "Bar", program: "A
                l'intérieur, ou à l'extérieur, venez déguster tout un assortiment de tapas, faîtes-maison et toujours
                préparés à la demande. Pour accompagner ce moment gustatif, les WC vous propose une carte d'une
                quinzaine de vins, dont la spécialité maison est le Bleu Pression, plus d'une trentaine de bières, en
                bouteille ou pression, et de nombreux cocktails. Les WC, c'est aussi des soirées thématiques tout au
                long de la saison estivale. Un lieu insolite et atypique, totalement revisité, à découvrir sans tarder
                !")
activity.photo.attach(io: file, filename: "WC.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse2.mm.bing.net/th?id=OIP.a2_HkKuJXfnMeRtdcnhC5QHaE8&pid=Api")
activity = Activity.new(name: "PATINOIRE CHARLEMAGNE", description: "D’une capacité publique de 4 200 personnes, la
                patinoire reçoit aussi des spectacles sur glace et des compétitions internationales et nationales.", address:
                "Patinoire Charlemagne, 100 Cr Charlemagne, 69002 Lyon", max_number_persons: 4200, price_cents: "between 400 and 780",
                        workshop: "false", opening_days: [4, 5, 6, 0], open_at: "14:00", close_at: "23:00", ville: "Lyon", categorie:
                "Patinoire", program:)
activity.photo.attach(io: file, filename: "patinoire.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.y6WbQIPfUCisPBN8CFAShQHaFg&pid=Api")
activity = Activity.new(name: "PISCINE JOSÉPHINE BAKER", description: "La piscine de Paris 13 Joséphine Baker dispose d’un
                espace aquatique, d’un espace bien-être et d’un espace forme avec tous les équipements nécessaires pour
                plaire à toute la famille. Le plus ? La vue sur la Seine lorsque vous vous baignez !", address:
                "Quai François Mauriac, 75013 Paris", workshop: "false", max_number_persons: 350, price_cents:
                350, opening_days: [3, 4, 5, 6], open_at: "14:00", close_at: "23:00", ville: "Paris", categorie: "Piscine")
activity.photo.attach(io: file, filename: "Josephine.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://image.jeuxvideo.com/medias-sm/142591/1425907983-9464-capture-d-ecran-pc-playstation-4-xbox-one.jpg")
activity = Activity.new(name: "LAST DOOR ESCAPE GAME", description: "Injustement emprisonnés, votre procès vient de connaître
  l’issue que vous craigniez : vous êtes définitivement condamnés à la peine capitale. Il ne vous reste
  maintenant plus qu’une heure avant l’injection létale. Arriverez-vous à vous en échapper ?", address:
  "24 Rue Jules Vedrines, 42160 Andrézieux-Bouthéon", workshop: "false", max_number_persons:
  6, price_cents: 2500, opening_days: [0, 1, 2, 3, 4, 5, 6], open_at: "9:00", close_at: "22:30", ville: "Andrézieux-Bouthéon", categorie: "Escape Game")
activity.photo.attach(io: file, filename: "escape.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://alloescape.fr/wp-content/uploads/2019/09/quiz-room-paris-avis.jpg")
activity = Activity.new(name: "LA QUIZ ROOM", description: "Entre amis ou en famille… 2 parties (ou +) pour découvrir ou
                redécouvrir Quiz Room et ses jeux totalement quiz !", address:
                "81 Rue Lucien Faure - 33300 Bordeaux", workshop: "false", opening_days:
                [0, 1, 2, 3, 4, 5, 6], open_at: "10:00", close_at: "23:30", ville: "Bordeaux", categorie: "Quizz")
activity.photo.attach(io: file, filename: "quiz.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://www.sevensquares.fr/wp-content/uploads/2021/02/20210202_102652-scaled.jpg")
activity = Activity.new(name: "SEVEN SQUARES", description: "Avec nos 7 activités pour tous les âges, variez les plaisirs sans
                vous déplacer ! Venez en famille, entre amis et partagez un moment convivial. ", address:
                "2 Rue Ferrer, 42000 Saint-Étienne", workshop: "false", max_number_persons: 200, opening_days:
                [0, 1, 2, 3, 4, 5, 6], open_at: "10:00", close_at: "2:00", ville: "Saint-Etienne", categorie: "Parc d'activités")
activity.photo.attach(io: file, filename: "squares.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.5ZUppCI9UfgQLj8Dg12IbAHaE8&pid=Api")
activity = Activity.new(name: "LE BAM", description: "Inspiré du concept de karaoke box né en Asie, BAM Karaoke Box donne un nouveau souffle au divertissement citadin grâce à un concept inédit et novateur.",address:
                "69 avenue Wagram, 75017 paris", workshop: "false", max_number_persons: 22, price_cents: 1200, opening_days:
                [0, 1, 2, 3, 4, 5, 6], open_at: "18:30", close_at: "1:30", ville: "Paris", categorie: "Karaoké")
activity.photo.attach(io: file, filename: "karaoke.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.0zA-nns_sTHXqN-nqKplzwHaHa&pid=Api")
activity = Activity.new(name: "CLUB DE TIR JEANNE D'ARC", description: "Le club de tir Jeanne d'arc réunit des passioonnés et pratiquants de tir à l'arme de poing",address:
                "90 Rue Jeanne D'Arc, Paris", workshop: "false", max_number_persons: 3, price_cents: 4500, opening_days:
                [0, 1, 2, 3, 4, 5], open_at: "10:00", close_at: "19:00", ville: "Paris", categorie: "Club de Tir")
activity.photo.attach(io: file, filename: "tir.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.Jf0a2OJaig4yx9E_Q3VCwwHaE8&pid=Api")
activity = Activity.new(name: "LASER GAME", description: "Affrontez vos adversaires au sein de l'un de nos 3 labyrinthes. Sensations fortes et rires garanties !",address:
                "160 Rue Saint-Maur, 75011 Paris", workshop: "false", max_number_persons: 30, price_cents: 2900, opening_days:
                [0, 1, 2, 3, 4], open_at: "10:00", close_at: "23:00", ville: "Paris", categorie: "Laser Game")
activity.photo.attach(io: file, filename: "laser.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.f96bVL0EiTqRIRqoenIT4QHaE2&pid=Api")
activity = Activity.new(name: "FLOTTAISON EN ISOLATION", description: "Découvrez la flottaison, l'une des expériences de relaxation les plus profondes et les plus efficaces au monde !",address:
                "194 Rue du Général De Gaulle, 59110 La Madeleine", workshop: "false", max_number_persons: 2, price_cents: 6000, opening_days:
                [0, 1, 2, 3, 4], open_at: "10:00", close_at: "18:00", ville: "Lille", categorie: "Massage")
activity.photo.attach(io: file, filename: "massage.png", content_type: "image/png")
activity.user = user
activity.save!

puts 'Finished!'
