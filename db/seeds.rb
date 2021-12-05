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
# yelp29 = "gb5LTsZXj0-my0eSDWXwLg" #stephanos
#yelp30 = "-2joeHbqY9TayADessQGwA" #lynnwood cafe

                                #Foods
food1 = Food.create(name: "Wings", description: "Hot? Sweet? Plain? We got you!", photo_url: "https://www.thespruceeats.com/thmb/aFGjturwDFyIZp3Sd8wFRxUtPTg=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/basic-buffalo-hot-wings-recipe-100937-hero-01-611327a035df408fa3771fe8970d8521.jpg")
food2 = Food.create(name: "Nachos", description: "A mound of tortilla chip topped with melted cheese and often additional savory toppings", photo_url:"https://www.whiskaffair.com/wp-content/uploads/2019/03/Loaded-Nachos-1-2.jpg")
food3 = Food.create(name:"Pizza", description: "I think of dieting, then I eat pizza.", photo_url:"https://thumbor.thedailymeal.com/oKDNg7avHEhoBzeFJW6TPbO0vBE=/870x565/filters:focal(600x389:601x390):format(webp)/https://www.thedailymeal.com/sites/default/files/2020/05/06/copy/shutterstock_647242084.jpg")
food4 = Food.create(name: "Fries",description: "Each fry is coated in a layer of golden crisp that gives way to a soft, welcoming interior. They hit savory and umami with a hint of sweetness and they taste like potatoes, oil, and just the right amount of salt.", photo_url:"https://cdn.leitesculinaria.com/wp-content/uploads/2020/06/perfect-french-fries.jpg.webp")
food5 = Food.create(name:"Burgers", description:"A good burger is a sloppy, delicious, gloopy, barely-held-together gobful of hot meaty deliciousness", photo_url:"https://natashaskitchen.com/wp-content/uploads/2019/04/Best-Burger-5.jpg")
                               #Restaurants  
Restaurant.create(name: "Wendell's", location:"30 W Main St, Norton, MA 02766", description:"If you want hot wings this is the place to go.", photo_url:"https://img1.wsimg.com/isteam/ip/bb7c829b-098a-45bb-b104-a0688be0989a/9014c870-7340-4f43-8adb-4a976c0cd35e.jpg/:/rs=w:1300,h:800", food: food1, yelp_id:"CTZnZuz-6deAyOz9sxokww")
Restaurant.create(name:"Boneyard Barbecue", location:"540 Central Ave, Seekonk, MA 02771",description:"Buzzing spot for BBQ, beers & entertainment, with rocker-chic decor & a biker vibe.",photo_url:"data:image/png;base64,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", food: food1, yelp_id: "vQsIZ3juK7m54eyukdKfoQ")
Restaurant.create(name:"Emma's", location:"130 Mansfield Ave, Norton, MA 02766",description:"Tavernlike outfit known for super-sized portions of comfort food, plus sheet-pan pizzas for takeout.",photo_url:"https://emmaspubandpizza.com/files/2018/06/logo1.png", food: food1, yelp_id: "LTzYm5EGDmRrm6D967V30g")
Restaurant.create(name:"Chickie Flynn's", location:"94 Washington St, Foxborough, MA 02035",description:"Chickie flynns for fried chicken breast tossed in our spicy buffalo sauce, with lettuce, tomato and blue cheese dressing.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/ztrSA8p8CBN65vdmDjFsgA/o.jpg", food: food1, yelp_id:"tMXrmW3yQnw8mX4avJhxPA")
Restaurant.create(name:"Parker's Pub", location:"303 Shears St, Wrentham, MA 02093",description:"30 different flavors of wings and plenty of ice cold beer to wash em' down!",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/QQW9JEnf-ID5wBav1RBK7A/o.jpg", food: food1, yelp_id:"uLJDW4zL079EG73h0aMAnA")
Restaurant.create(name:"Wing Squad", location:"Delivery Only",description:"Wing Squad is the delivery-only restaurant concept launched by Robert Earl of Virtual Dining Concepts. Our only mission is to make big flavored, made to order wings for delivery to your home or office.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/9o71Atj3hBEqpF8LI2VSog/o.jpg", food: food1, yelp_id:"fSYVtL2r7kA3uWJ7ck-2tw")
Restaurant.create(name:"Scorpion Bar Patriot Place", location:"253 Patriot Pl, Foxborough, MA 02035",description:"A great place to get drinks and have a bite to eat.If you are looking for a little more excitemnet the night time scheme is where it is at.",photo_url:"https://cdn.vox-cdn.com/thumbor/EZz4_xJUdiHiL3fs025wRPp26Kk=/0x0:2048x1365/1720x0/filters:focal(0x0:2048x1365):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/7196711/ScorpionBarPatsPlace1-18.jpg", food: food2, yelp_id:"0E9Syz7PxKnGBK1Dfg8aRw")
Restaurant.create(name:"The Thirsty Beaver Hometown Pub & Grub", location:"591 Washington St, Wrentham, MA 02093",description:"Welcome to the Thirsty Beaver Hometown Pub & Grub; a stylish yet classic pub-staurant concept set in a distinctive and vibrant log cabin.",photo_url:"https://static.wixstatic.com/media/9d6e36_1dbf76e5d1db4f028c95956b6b168e5a~mv2.png/v1/fill/w_496,h_496,al_c,q_85,usm_0.66_1.00_0.01/LOGO.webp", food: food2, yelp_id:"VGmyfmxZtVQim0ozCpQw4g")
Restaurant.create(name:"Jalapeno's Grill", location:"960 Main St, Walpole, MA 02081",description:"Festive restaurant for margaritas & traditional Yucatecan Mexican fare including veggie options.",photo_url:"https://www.visitingnewengland.com/PageMill_Resources/jalapenos-walpole.jpg", food: food2, yelp_id:"1mGplLeMzbs3sMhPX3HB2A")
Restaurant.create(name:"Avocados Mexican Cuisine", location:"809 Washington St, Stoughton, MA 02072",description:"We are a family-run, independent restaurant offering the best quality Mexican food and drink options, in stunning and contemporary surroundings.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/uHgG8mUpFhknBtaU_PFj1Q/o.jpg", food: food2, yelp_id:"A7c3FCEePaDD5_S5LLST3A")
Restaurant.create(name:"The Gavel Public House", location:"36 South St, Wrentham, MA 02093",description:"Seasonal American fare, craft beer & cocktails in laid-back surrounds, plus a patio with live music.",photo_url:"https://4.bp.blogspot.com/-E1gEhmYoDm8/W24vpn-E5TI/AAAAAAAAAmo/T-63YySXFoIxIT6Ru_LoSIf4X0rQD1bBwCLcBGAs/s1600/The%2BGavel%2BPublic%2BHouse%2Brev%2B1.jpg", food: food2, yelp_id:"c7YwydiBHe69NzgUNvS_0w")
Restaurant.create(name:"Mick Morgan's Irish Pub & Restaurant", location:"973 Providence Hwy, Sharon, MA 02067",description:"Mick Morgans menu give a traditional Irish flare to your favorite American dishes.",photo_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHGHO5V89QKu1G3g6-YjTRwwrj8ibY_NgHmexVzM-d2rL1kT_l4Ni5cZupEw1AgwfByhg&usqp=CAU", food: food2, yelp_id:"VKAUYW5eIPJk20PjZuGoug")
Restaurant.create(name:"Sal's & Mal's Pizzeria", location:"8 Wall St, Foxborough, MA 02035",description:"Sal's and Mal's is a family owned and operated Italian style pizzeria, proud to be serving the Foxboro community and surrounding towns.",photo_url:"https://scontent-bos3-1.xx.fbcdn.net/v/t1.18169-9/17362385_1390064181014696_8444565591512100680_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=973b4a&_nc_ohc=HXbt0XkmEh0AX-RZxy5&_nc_ht=scontent-bos3-1.xx&oh=e2b02b5b756cf63f4390297b87659546&oe=61C7D370", food: food3, yelp_id:"F3p5ABpTEcm0O-OQyhMcPA")
Restaurant.create(name:"Bar Pizza & Salad Co.", location:"280 School St Suite J-135, Mansfield, MA 02048",description:"It has a cracker like crust, crushed tomato sauce and mostly cheddar cheese which is spread to the edge. It is baked in a 10 inch steel pan until the edges are crispy.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/m9_JMFt69D1H8APN_w8wog/o.jpg", food: food3, yelp_id:"a2FQWhXn2nORSK3AKYmozg")
Restaurant.create(name:"Eagle Brook Saloon", location:"258 Dedham St, Norfolk, MA 02056",description:"Old West–themed tavern featuring American fare & draft beer, including house-brewed selections.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/ehKI9Z4tn2T5o1gAQBxJdw/o.jpg", food:food3, yelp_id:"n501wRppIj0i8D-K41dUTQ")
Restaurant.create(name:"Town Spa Pizza", location:"1119 Washington St, Stoughton, MA 0207",description:"Easygoing eatery offering a variety of classic pies, plus salads, sandwiches, wings & draft beers.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/PigdNgbwP4TvzmoG3YqFug/o.jpg", food: food3, yelp_id:"2bF-4ldggT4aLbbgd20X2Q")
Restaurant.create(name:"Stefano's Pizza & Subs", location:"30 Chauncy St, Mansfield, MA 02048",description:"Unpretentious parlor offering a range of pizzas, hot & cold subs, pastas & salads, plus wings.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/Zx12i5c5dHzKN72XFnw88w/o.jpg", food: food3, yelp_id:"gb5LTsZXj0-my0eSDWXwLg")
Restaurant.create(name:"Lynwood Cafe", location:"320 Center St, Randolph, MA 02368",description:"Venerable neighborhood bar with a long list of pub-style pizzas to go with beer, wine & cocktails.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/Oc57VxpFwcbEmw5O14aApg/o.jpg", food: food3, yelp_id:"-2joeHbqY9TayADessQGwA")
Restaurant.create(name:"Five Guys", location:"269 Patriot Place Foxborough, MA 02035",description:"Double-cooking our fries in 100 percent peanut oil, hand-preparing fresh ingredients every morning or serving peanuts while you wait.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/ZSiu3hx4uOvKboqw9NHUJg/o.jpg", food: food4, yelp_id:"9r0z9JFHFD5k5Ar2wb2zow")
Restaurant.create(name:"Mooyah", location:"321 School Street Suite 140 Mansfield, MA 02048",description:"We serve up Ridiculicious® comfort food in a family friendly environment including 100% Certified Angus Beef®, all natural turkey & black bean veggie burgers and all beef hot dogs. ",photo_url:"https://mooyah-cdn.preproduction.io/locations/MOOYAH-Mansfield-Best-Burger.jpg?mtime=20200603202844&focal=none", food: food4, yelp_id:"2X2qOiSGWkwz5ACtqrmBTA" )
Restaurant.create(name:"Davio's Northern Italian Steakhouse", location:"236 Patriot Pl, Foxborough, MA 02035",description:"Northern Italian cuisine, including handmade gnocchi, steaks & seafood, in a high-end setting.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/2uRxllPg5HaigHRFbdUGiw/o.jpg", food: food4, yelp_id:"2EwsGgYyNl-YKoIGBozNkw")
Restaurant.create(name:"Mac & Walt's", location:"363 Old Colony Rd, Norton, MA 02766",description:"Great vibe, tasty burgers and a diverse selection of local craft beers.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/C3dF4Q88GLJiRcsJ7bE6Lg/o.jpg", food: food4, yelp_id:"luOr7d0cv4hKfSuiwSQ3NQ")
Restaurant.create(name:"The Raven's Nest Pub & Restaurant", location:"998 Main St, Walpole, MA 02081",description:"Classic Irish pub & family restaurant offering draft beer, elevated bar bites & plasma TVs.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/HrV6DPHraekQkstGQtsG8w/o.jpg", food: food4, yelp_id:"qNBYcJvfZXaI2zna9CFfzg")
Restaurant.create(name:"Fitzy's Pub & Family Dining", location:"1 Man-Mar Dr, Plainville, MA 02762",description:"Good Food, Good Value! Come join us at the newly renovated Fitzy's Pub where you can enjoy great food and forget the rest!",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/ndv_JaRUgERNjojs-HxItQ/o.jpg", food: food4, yelp_id:"T_pTjbJQ4oUpVZePALns-g" )
Restaurant.create(name:"Mooyah", location:"321 School Street Suite 140 Mansfield, MA 02048",description:"We serve up Ridiculicious® comfort food in a family friendly environment including 100% Certified Angus Beef®, all natural turkey & black bean veggie burgers and all beef hot dogs. ",photo_url:"https://mooyah-cdn.preproduction.io/locations/MOOYAH-Mansfield-Best-Burger.jpg?mtime=20200603202844&focal=none", food: food5, yelp_id:"2X2qOiSGWkwz5ACtqrmBTA" )
Restaurant.create(name:"Mac & Walt's", location:"363 Old Colony Rd, Norton, MA 02766",description:"Great vibe, tasty burgers and a diverse selection of local craft beers.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/C3dF4Q88GLJiRcsJ7bE6Lg/o.jpg", food: food5, yelp_id:"luOr7d0cv4hKfSuiwSQ3NQ")
Restaurant.create(name:"KC's Classic Burger Bar", location:"625 E Washington St, North Attleborough, MA 02760",description:"From The Elvis Burger, which comes topped with a fried banana, bacon, cheese and our one-of-a-kind PB & J sauce, to The Blue Hawaii, layered with Teriyaki glaze, grilled pineapple, roasted red pepper and Swiss, there is guaranteed to be a burger for every taste!",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/PajclJ96qd_od4wLBASykA/o.jpg", food: food5, yelp_id:"Yf40LuX8uI8regsXkjuiUQ")
Restaurant.create(name:"BJ's Restaurant & Brewhouse", location:"1174 S Washington StNorth Attleboro, MA 02760",description:"Our menu features BJ's own delicious, innovative spin on your favorite foods.",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/y4ZmIg56Amz5P2dauY95NA/o.jpg", food: food5, yelp_id:"mgr8MC_heCvQaLgQvmpSFQ")
Restaurant.create(name:"Flynn's Irish Pub", location:"219 N Main St, Mansfield, MA 02048",description:"Flynn's is famous for amazing 1/2 pound burgers, like the Mighty Flynn or any of the 17+ we have on the menu!",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/WiuIUiCJZGHenmQo07oT9Q/o.jpg", food: food5, yelp_id:"b_HzatMKNCKv74gSnzZYzQ")
Restaurant.create(name:"Clyde’s Grill and Bar", location:"642 Providence Hwy, Walpole, MA 02081",description:"Clyde's is a family of restaurants born from a sincere belief that great dining begins with fresh ingredients, friendly people, and an unforgettable atmosphere",photo_url:"https://s3-media0.fl.yelpcdn.com/bphoto/eHBhccef_leic3CRq4fY9w/o.jpg", food: food5, yelp_id:"irhe3PwlhZYboKy6Q3nz1Q")