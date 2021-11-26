# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Yelp Api key
            #wings
# yelp1 = "CTZnZuz-6deAyOz9sxokww" #wendells
# yelp2 = "vQsIZ3juK7m54eyukdKfoQ" #boneyard
# yelp3 = "LTzYm5EGDmRrm6D967V30g" # Emmas
# yelp4 = "tMXrmW3yQnw8mX4avJhxPA" # chickie fylnns
# yelp5 = "fSYVtL2r7kA3uWJ7ck-2tw" # wing squad 
# yelp6 = "uLJDW4zL079EG73h0aMAnA" # parkers pub
#             #Nachos
# yelp7 = "0E9Syz7PxKnGBK1Dfg8aRw" #scorpion bar
# yelp8 = "VGmyfmxZtVQim0ozCpQw4g" #thirsty beaver
# yelp9 = "1mGplLeMzbs3sMhPX3HB2A" # jealopeno grill
# yelp10 = "A7c3FCEePaDD5_S5LLST3A" # Avacado mexican cuisine
# yelp11 = "c7YwydiBHe69NzgUNvS_0w" # gavel public house
# yelp12 = "VKAUYW5eIPJk20PjZuGoug" # mick morgans 
#             #burgers
# yelp13 = "2X2qOiSGWkwz5ACtqrmBTA" # mooyah burgers
# yelp14 = "Yf40LuX8uI8regsXkjuiUQ" # kcs burger bar
# yelp15 = "mgr8MC_heCvQaLgQvmpSFQ" #bjs 
# yelp16 = "luOr7d0cv4hKfSuiwSQ3NQ" # mac n walts
# yelp17 = "b_HzatMKNCKv74gSnzZYzQ" # fylnns 
# yelp18 = "irhe3PwlhZYboKy6Q3nz1Q" #clydes
#             #fries
# yelp19 = "9r0z9JFHFD5k5Ar2wb2zow" # fiveguys
# yelp20 = # mooyah already made  
# yelp21 = #mac n walts already made  
# yelp22 = "2EwsGgYyNl-YKoIGBozNkw" # davios
# yelp23 = "qNBYcJvfZXaI2zna9CFfzg" # ravens nest
# yelp24 = "T_pTjbJQ4oUpVZePALns-g" # fitzys pub
#             #pizza
# yelp25 = "F3p5ABpTEcm0O-OQyhMcPA" # salsnmals
# yelp26 = "a2FQWhXn2nORSK3AKYmozg" #bar pizza and salad co
# yelp27 = "n501wRppIj0i8D-K41dUTQ" # eagle brook
# yelp28 = "2bF-4ldggT4aLbbgd20X2Q" # town spa
# yelp29 = "gb5LTsZXj0-my0eSDWXwLg"


food1 = Food.create(name: "Wings", description: "Hot? Sweet? Plain? We got you!", photo_url: "https://www.thespruceeats.com/thmb/aFGjturwDFyIZp3Sd8wFRxUtPTg=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/basic-buffalo-hot-wings-recipe-100937-hero-01-611327a035df408fa3771fe8970d8521.jpg")
food2 = Food.create(name: "Nachos", description: "A mound of tortilla chip topped with melted cheese and often additional savory toppings", photo_url:"https://www.whiskaffair.com/wp-content/uploads/2019/03/Loaded-Nachos-1-2.jpg")

Restaurant.create(name: "Wendells", location:"30 W Main St, Norton, MA 02766", description:"If you want hot wings this is the place to go.", photo_url:"https://img1.wsimg.com/isteam/ip/bb7c829b-098a-45bb-b104-a0688be0989a/9014c870-7340-4f43-8adb-4a976c0cd35e.jpg/:/rs=w:1300,h:800", food_id:food1, yelp_id:"CTZnZuz-6deAyOz9sxokww")
