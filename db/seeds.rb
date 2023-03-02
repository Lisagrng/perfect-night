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
User.create!(name: "Joséphine", age: 21, sexe: "feminin", address: "2 route de la reine, 92100 Paris", email:
            "joséphine.lambda@gmail.com", password: "123456", phone_number: "0607080910")
User.create!(name: "Dylan", age: 35, sexe: "masculin", address: "8 rue des fleurs, 95870 Bezons", email:
            "dylan.lambda@gmail.com", password: "123456", phone_number: "0607080910")
User.create!(name: "Sarah", age: 32, sexe: "feminin", address: "Impasse pisse-chat, 42210 Bellegarde-en-Forez",
            email: "sarah.lambda@gmail.com", password: "123456", phone_number: "0607080910")
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
                patinoire reçoit aussi des spectacles sur glace et des compétitions internationales et nationales.",
                        address: "Patinoire Charlemagne, 100 Cr Charlemagne, 69002 Lyon", max_number_persons: 4200,
                        price_cents: "between 400 and 780", workshop: "false", opening_days: [4, 5, 6, 0], open_at:
                "14:00", close_at: "23:00", ville: "Lyon", categorie: "Patinoire", program: "Venez profiter d'une large
                patinoire en plein coeur de Lyon! Cet établissement accueille régulièrement de nombreux spectavles et
                compétition! Les amateurs de hockeys ou danse sur glace seront donc ravis, mais les amoureux de la
                glisse le seront aussi grâce à la taille de la glace et des lumières qui bougeront au rythme de la
                musique!")
activity.photo.attach(io: file, filename: "patinoire.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.y6WbQIPfUCisPBN8CFAShQHaFg&pid=Api")
activity = Activity.new(name: "PISCINE JOSÉPHINE BAKER", description: "La piscine de Paris 13 Joséphine Baker dispose d’
                un espace aquatique, d’un espace bien-être et d’un espace forme avec tous les équipements nécessaires
                pour plaire à toute la famille. Le plus ? La vue sur la Seine lorsque vous vous baignez !", address:
                "Quai François Mauriac, 75013 Paris", workshop: "false", max_number_persons: 350, price_cents:
                350, opening_days: [3, 4, 5, 6], open_at: "14:00", close_at: "23:00", ville: "Paris", categorie:
                "Piscine", program: "Venez profiter d'un large espace aquatique disposant d'un bassin sportif de 25 m
                avec vue imprenable sur la Seine et d'un solarium de 500 m². Cette piscine de Paris 13 atypique saura
                vous séduire via ses différents atouts. Joséphine Baker propose toutes sortes d’activités qui
                satisferont adultes et enfants. Que ce soit pour se surpasser au travers des activités sportives,
                s'amuser ou se détendre, la piscine Joséphine Baker est le lieu idéal.")
activity.photo.attach(io: file, filename: "Josephine.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://image.jeuxvideo.com/medias-sm/142591/1425907983-9464-capture-d-ecran-pc-playstation-4-xbox-one.jpg")
activity = Activity.new(name: "LAST DOOR ESCAPE GAME", description: "Injustement emprisonnés, votre procès vient de
                connaître l’issue que vous craigniez : vous êtes définitivement condamnés à la peine capitale. Il ne
                vous reste maintenant plus qu’une heure avant l’injection létale. Arriverez-vous à vous en échapper ?",
                        address: "24 Rue Jules Vedrines, 42160 Andrézieux-Bouthéon", workshop: "false",
                        max_number_persons: 6, price_cents: 2500, opening_days: [0, 1, 2, 3, 4, 5, 6], open_at: "9:00",
                        close_at: "22:30", ville: "Andrézieux-Bouthéon", categorie: "Escape Game", program: "Situé sur
                la commune d’Andrézieux-Bouthéon, à proximité immédiate de Saint-Etienne, Last Door vous accueille 7j/7
                dans un espace de 350 m2 entièrement climatisé, dédié au jeu d’évasion grandeur nature. Mêlant réflexion
                , coopération et communication, venez découvrir le concept du live escape game en équipe de 2 à 6
                personnes. Accessible à tous, profitez de cette expérience captivante, entre amis, en famille ou entre
                collègues ! Dans des décors saisissants, vous aurez une heure pour résoudre des énigmes, découvrir des
                passages secrets et réaliser votre mission. Nous vous proposerons également des boissons chaudes ou
                froides en fin de session pour partager avec vous vos ressentis. Nous mettons aussi à votre disposition
                une salle de réunion équipée pour organiser vos séminaires, team building, EVG/EVJF, anniversaires… Une
                soirée entre amis ? N’hésitez pas à nous solliciter pour nos formules complètes avec repas et salle
                privée pour particuliers ou professionnels!")
activity.photo.attach(io: file, filename: "escape.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://alloescape.fr/wp-content/uploads/2019/09/quiz-room-paris-avis.jpg")
activity = Activity.new(name: "LA QUIZ ROOM", description: "Entre amis ou en famille… 2 parties (ou +) pour découvrir ou
                redécouvrir Quiz Room et ses jeux totalement quiz !", address: "81 Rue Lucien Faure - 33300 Bordeaux",
                        workshop: "false", opening_days: [0, 1, 2, 3, 4, 5, 6], open_at: "10:00", close_at: "23:30",
                        ville: "Bordeaux", categorie: "Quizz", program: "Pendant 1h à 1h30 (3 parties) de jeu, nous vous
                proposons de jouer à un quiz d'un tout nouveau genre dans un décor de plateau télé. Chez Quiz Room ©,
                celui qui a toujours été le premier de la classe a du souci à se faire et tous ceux qui aiment jouer
                prendront un malin plaisir à lui tendre des pièges. Les questions et le jeu sont adaptés à l'âge et aux
                centres d'intérêts des participants pour une expérience 100% personnalisée.")
activity.photo.attach(io: file, filename: "quiz.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://www.sevensquares.fr/wp-content/uploads/2021/02/20210202_102652-scaled.jpg")
activity = Activity.new(name: "SEVEN SQUARES", description: "Avec nos 7 activités pour tous les âges, variez les
                plaisirs sans vous déplacer ! Venez en famille, entre amis et partagez un moment convivial. ", address:
                "2 Rue Ferrer, 42000 Saint-Étienne", workshop: "false", max_number_persons: 200, opening_days:
                [0, 1, 2, 3, 4, 5, 6], open_at: "10:00", close_at: "2:00", ville: "Saint-Etienne", categorie: "Parc
                à loisirs", program: "Venez profiter de nos 7 expériences inoubliables parmis lesquelles: l'Ile de
                Tortuga qui ravira les plus petits grâce à ces nombreux structures gonflables! Le trampoline Park dans
                un espace de 800m2 proposant plus de 10 jeux différents! Seven Square c'est aussi le Clip'n Climb,
                l'escalade à portée de mains! Le Laser Game permettra aux plus téméraires d'entre vous de faire leurs
                preuves.. Les plus agiles aimeront certainement le Tag Active: un parcours d'obstacle en exclusivité
                nationale! Cette infrastructure propose également du bowling et du billard! Il y en aura pour tout le
                monde!")
activity.photo.attach(io: file, filename: "squares.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.5ZUppCI9UfgQLj8Dg12IbAHaE8&pid=Api")
activity = Activity.new(name: "LE BAM", description: "Inspiré du concept de karaoke box né en Asie, BAM Karaoke Box
                donne un nouveau souffle au divertissement citadin grâce à un concept inédit et novateur.", address:
                "69 avenue Wagram, 75017 paris", workshop: "false", max_number_persons: 22, price_cents: 1200,
                        opening_days: [0, 1, 2, 3, 4, 5, 6], open_at: "18:30", close_at: "1:30", ville: "Paris",
                        categorie: "Karaoké", program: "Venez chanter au BAM avec qui que vous soyez! Est-il vraiment
                possible de connaître ses amis avant de les avoir entendu chanter? Vous aurez rapidement la réponse!
                Faites vivre à vos ami(e)s jeunes marié(e)s une expérience unique qu'ils ne sont pas près d'oublier!
                Venez aussi en famille, non, le karaoké n'est pas réservé à vos enfants. Le chant, les rires, la joie,
                c'est intergénérationnel!")
activity.photo.attach(io: file, filename: "karaoke.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.0zA-nns_sTHXqN-nqKplzwHaHa&pid=Api")
activity = Activity.new(name: "CLUB DE TIR JEANNE D'ARC", description: "Le club de tir Jeanne d'arc réunit des
                passioonnés et pratiquants de tir à l'arme de poing", address: "90 Rue Jeanne D'Arc, Paris", workshop:
                "false", max_number_persons: 3, price_cents: 4500, opening_days: [0, 1, 2, 3, 4, 5], open_at: "10:00",
                        close_at: "19:00", ville: "Paris", categorie: "Club de Tir", program: "Notre association a été
                créée en 1986 par divers utilisateurs d’armes de poing, . Elle regroupe des adhérents provenant de toute
                l’Île-de-France, souhaitant pratiquer et s’entraîner en toute légalité. Notre club possède un stand de
                tir pouvant accueillir toutes catégories de personnes, que ce soient des amateurs de tir sportif (pour
                leur loisir), ou des professionnels (pour leur entraînement).Nous organisons également des cours de tir,
                ainsi que des stages d’initiation au tir pour les groupes et les comités d’entreprise.")
activity.photo.attach(io: file, filename: "tir.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.Jf0a2OJaig4yx9E_Q3VCwwHaE8&pid=Api")
activity = Activity.new(name: "URBAN LASER PARIS 11", description: "Affrontez vos adversaires au sein de l'un de nos 3
                labyrinthes. Sensations fortes et rires garanties !", address: "160 Rue Saint-Maur, 75011 Paris",
                        workshop: "false", max_number_persons: 30, price_cents: 2900, opening_days: [0, 1, 2, 3, 4],
                        open_at: "10:00", close_at: "23:00", ville: "Paris", categorie: "Laser Game", program: "Le but
                du jeu est simple : Désactivez un maximum de fois vos adversaires en se faisant désactiver un minimum de
                fois. Cette activité allie stratégie, habileté et précision. A la fin de la partie, c’est le moment de
                découvrir si vous vivez une joie intense en sortant victorieux ou le pire cauchemar de votre vie en
                finissant bon dernier. Rire et fun garantis quelque soit votre classement final. Nous vous accueillons
                peut importe la raison, une simple partie, un anniversaire, un repas d'entreprise ou même des futurs
                mariés! Tout le monde est le bienvenu.")
activity.photo.attach(io: file, filename: "laser.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://tse1.mm.bing.net/th?id=OIP.f96bVL0EiTqRIRqoenIT4QHaE2&pid=Api")
activity = Activity.new(name: "FLOTTAISON EN ISOLATION", description: "Découvrez la flottaison, l'une des expériences de
                relaxation les plus profondes et les plus efficaces au monde !", address: "194 Rue du Général De Gaulle,
                59110 La Madeleine", workshop: "false", max_number_persons: 2, price_cents: 6000, opening_days:
                [0, 1, 2, 3, 4], open_at: "10:00", close_at: "18:00", ville: "Lille", categorie: "Massage", program:
                "Venez découvrir les nombreux biensfaits: diminution du stress, aide à la gestion de la colère,
                réduction de la fatigue, amélioration des problèmes d'insomnie, a aussi des actions sur la dépression,
                amélioration des capacités de concentration et de mémorisation et une augmentation des processus d’
                apprentissage, augmentation de la productivité au travail. Ces derniers peuvent apparaitrent à partir de
                la première séance et durer de 10 à 14 jours. Cette expérience hors du commun vous fera le plus grand
                bien!")

activity.photo.attach(io: file, filename: "massage.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://www.google.com/maps/uv?pb=!1s0x12aebb65cea6aaef%3A0xa3dddc255ccaa52c!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOSg0SLsCH5MSl4JeHUVYi7OV-GCMZg-TOcOCk%3Dw260-h175-n-k-no!5sBar%20a%20Toulouse%20-%20Recherche%20Google!15sCgIgAQ&imagekey=!1e10!2sAF1QipN0BoJ9fL40VwrkLXZzTrQEMYb4bSNJvsLl5Wz2&hl=fr&sa=X&ved=2ahUKEwicgZa38L39AhVqVKQEHfVNAdcQ7ZgBKAB6BAgZEAI#")
activity = Activity.new(name: "LE BAR BASQUE", description: "Ce bar aux murs de briques, doté d'une terasse, fait club
                le soir avec des mix DJ et des soirées étudiantes", address: "7 Place Saint-Pierre, 31000 Toulouse",
                workshop: "false", max_number_persons: 60, opening_days:
                [1, 2, 3, 4, 5, 6], open_at: "11:30", close_at: "02:00", ville: "Toulouse", categorie: "Restaurant",
                program: "Institution Toulousaine depuis 1992 Le Bar Basque vous accueille au coeur de la place
                Saint-Pierre avec quatre espaces : la Kantina, bar/tapas, street-food et bamboche. Un patio avec vue sur
                la Garonne, véritable lieu de vie pour tous les Toulousains.")

activity.photo.attach(io: file, filename: "basque.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://axwwgrkdco.cloudimg.io/v7/lefooding.com/medias/2021/07/11_40_49_484_bar_heure_du_singe_toulouse.jpeg?width=1280&optipress=3")
activity = Activity.new(name: "L'HEURE DU SINGE", description: "Venez déguster de merveilleux cocktails dans cet établissement très chaleureux.",
                address: "59 Rue Pierre-Paul Riquet, 31000 Toulouse",workshop: "false", max_number_persons: 60, opening_days:
                [1, 2, 3, 4, 5], open_at: "19:00", close_at: "02:00", ville: "Toulouse", categorie: "Bar",
                program: "Situé dans le quartier St Aubin à Toulouse, l'Heure du Singe vous propose des cocktails conviviaux,
                pointus et des associations étonnantes. Produits maison et de saison...
                Le Singe ne recule devant aucune innovation: tout passe dans son shaker. Une sélection musicale à la fois
                accessible, éclectique et recherchée. Dans une ambiance élégante et décontractée, nous essaierons de vous
                transmettre notre passion pour le goût au travers de la fête et du partage...")

activity.photo.attach(io: file, filename: "singe.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://axwwgrkdco.cloudimg.io/v7/lefooding.com/medias/2021/07/11_40_49_484_bar_heure_du_singe_toulouse.jpeg?width=1280&optipress=3")
activity = Activity.new(name: "LE PETIT VOISIN", description: "Cocktails, bières et cuisine simple proposés dans un bar
                à l'atmosphère détendue doté d'un baby-foot et d'une terrasse côté rue.",address: "37 Rue Peyrolières, 31000 Toulouse",
                workshop: "false", max_number_persons: 60, opening_days:[1, 2, 3, 4, 5, 6], open_at: "07:30", close_at: "02:00", ville: "Toulouse", categorie: "Bar",
                program: "Vous avez envie de rythmes géniaux, d’une bonne ambiance et d’un cadre moderne ? Chez le
                « LE PETIT VOISIN », vous êtes alors à la bonne adresse. S’installer à notre bar avec un bon verre de
                vin et vivre l’agitation de la nuit – l’ambiance chez nous est super et la nuit peut commencer. Notre
                zone extérieure chauffée vous assure une atmosphère agréable et vous invite à rester plus longtemps.
                Quel que soit le temps, nos salles climatisées vous garantissent à tout moment des températures agréables.
                Nous organisons régulièrement des événements musique live qui garantissent une soirée inoubliable.")

activity.photo.attach(io: file, filename: "voisin.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://uploads.lebonbon.fr/source/2020/july/44531/levrette-10_2_1200.jpg")
activity = Activity.new(name: "LEVRETTE CAFE", description: "Bar branché au mobilier dépareillé servant de la bière,
                des tapas et des cocktails, avec une piste de danse et un photomaton.",address: "65 Jean Jaurès, 31000 Toulouse",
                workshop: "false", max_number_persons: 60, opening_days:[1, 2, 3, 4, 5, 6], open_at: "17:00", close_at:
                "02:00", ville: "Toulouse", categorie: "Bar",
                program: "Son espace vous offre la possibilité de vous poser dans des petits salons, de profiter de la
                terrasse ainsi que de pouvoir danser sur la piste de danse. Vous pouvez vous y retrouver entre amis,
                collègues ou en famille en train de déguster nos produits de qualité dans un décor vintage et industriel.
                Une street-food de saison et des alcools sélectionnées avec soin vous seront proposés le midi
                comme le soir.")

activity.photo.attach(io: file, filename: "levrette.png", content_type: "image/png")
activity.user = user
activity.save!

file = URI.open("https://www.londontownpub.fr/uploads/images/home_slider/1586427823london20town20450x2045020gallery20image2011.jpg")
activity = Activity.new(name: "THE LONDON TOWN", description: "Bières pression, collations de bar, fléchettes et sports
                télévisés dans un pub de style britannique doté de tables côté rue.",address: "14 Rue des Prêtres, 31000
                Toulouse", workshop: "false", max_number_persons: 60, opening_days:[0, 1, 2, 3, 4, 5, 6], open_at: "18:00",
                close_at:"02:00", ville: "Toulouse", categorie: "Bar",
                program: "La clientèle mixte, la musique entraînante et la bonne ambiance en font l'un des pubs les plus
                populaires de la ville, aidé en grande partie par les bières anglaises de qualité supérieure que nous
                importons de notre propre brasserie à Bedford. Nous proposons également une large gamme de cidres,
                de boissons non alcoolisées chaudes et froides, de cocktails et de spiritueux. Nous avons vraiment
                quelque chose pour tout le monde, et avec une équipe internationale accueillante, une variété d'activités
                amusantes telles que des soirées quiz, des matchs de première ligue, des compétitions de fléchettes,
                de la bonne musique et des jeux de société, vous comprendrez rapidement pourquoi la ville de Londres a a
                résisté à l'épreuve du temps. ")

activity.photo.attach(io: file, filename: "london.png", content_type: "image/png")
activity.user = user
activity.save!
puts 'Finished!'
