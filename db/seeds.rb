# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


food1 = Food.create(name: "Wings", description: "Hot? Sweet? Plain? We got you!", photo_url: "https://www.thespruceeats.com/thmb/aFGjturwDFyIZp3Sd8wFRxUtPTg=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/basic-buffalo-hot-wings-recipe-100937-hero-01-611327a035df408fa3771fe8970d8521.jpg")
food2 = Food.create(name: "Nachos", description: "A mound of tortilla chip topped with melted cheese and often additional savory toppings", photo_url:"https://www.whiskaffair.com/wp-content/uploads/2019/03/Loaded-Nachos-1-2.jpg")
Restaurant.create(name: "Wendells", location:"30 W Main St, Norton, MA 02766", description:"If you want hot wings this is the place to go.", photo_url:"https://img1.wsimg.com/isteam/ip/bb7c829b-098a-45bb-b104-a0688be0989a/9014c870-7340-4f43-8adb-4a976c0cd35e.jpg/:/rs=w:1300,h:800", food: food1)