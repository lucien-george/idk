#cleaning database seed
# -------------------------------------------------------------------------------------
puts 'Cleaning Database...'

Hosting.destroy_all
Event.destroy_all
Wish.destroy_all
ActivityTag.destroy_all
Activity.destroy_all
Message.destroy_all
Conversation.destroy_all
Tag.destroy_all
Category.destroy_all
User.destroy_all

puts 'Database cleaned!'

#user seed
# -------------------------------------------------------------------------------------
puts 'Creating users...'

User.create!(first_name: 'lucien', last_name: 'george', age: 23, email: 'lucien@gmail.com', password: '123456', photo: 'https://res.cloudinary.com/luciengeorge/image/upload/v1542810609/ehokhv0hcox05t7yv38g.jpg')
User.create!(first_name: 'gaby', last_name: 'martinez', age: 24, email: 'gaby@gmail.com', password: '123456', photo: 'https://res.cloudinary.com/luciengeorge/image/upload/v1542973583/fflhzynkvkhgosfi0gvg.jpg')
User.create!(first_name: 'izzy', last_name: 'brown', age: 23, email: 'izzy@gmail.com', password: '123456', photo: 'https://res.cloudinary.com/luciengeorge/image/upload/v1542653555/y65fftsptbowqbv0vyg5.jpg')
User.create!(first_name: 'ife', last_name: 'odugbesan', age: 29, email: 'ife@gmail.com', password: '123456', photo: 'https://res.cloudinary.com/luciengeorge/image/upload/v1542548118/ku3ggbedmoe3gxufajbx.jpg')

puts 'Users created!'


#categories seed
# -------------------------------------------------------------------------------------
puts 'Creating categories...'

# category = Category.create!(title: 'food')
food = Category.create!(title: 'food')
drink = Category.create!(title: 'drink')
adventure = Category.create!(title: 'adventure')
chill = Category.create!(title: 'chill')

puts 'Categories created!'

#activities seed
# -------------------------------------------------------------------------------------
puts 'Creating activities...'


# food - shoreditch
visions_canteen = Activity.create!(category: food, title: 'Visions Canteen', location: '31 New Inn Yard, London EC2A 3EY', phone: '', hours: '', description: 'Trendy coffee shop with changing menu full of flavor', instagram: 'visionscanteen', price: '£', age: 0, photo: 'https://images.unsplash.com/photo-1460865332492-81fd69fc5996?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=110c4339a62c560e6128c666ed5f1fb1&auto=format&fit=crop&w=1050&q=80', date: '')
on_the_bab = Activity.create!(category: food, title: 'On The Bab', location: '305 Old St, London EC1V 9LA', phone: '020 7683 0361', hours: '', description: 'Korean small plates inspired by streetfood', instagram: 'onthebab', price: '£', age: 0, photo: 'http://onthebab.com/img/otb_main_img.jpg', date: '')
leroy = Activity.create!(category: food, title: 'Leroy', location: '18 Phipp St, London EC2A 4NU', phone: '020 7739 4443', hours: '', description: 'New venture from Michelin Starred restaurant Ellory', instagram: 'leroyshoreditch', price: '£££', age: 0, photo: 'https://static1.squarespace.com/static/5a87d1f19f07f5bf314b9618/5ab8fbbc0e2e720d9762640e/5ab8fc17f950b750934be86c/1522072628695/QuailSkewer.jpg?format=500w', date: '')
dishoom = Activity.create!(category: food, title: 'Dishoom', location: '7 Boundary St, London E2 7JE', phone: '020 7420 9324', hours: '', description: 'Fun destination for Indian inspired street food with upscale touches, several locations across london', instagram: 'dishoom', price: '££', age: 0, photo: 'http://www.dishoom.com/wp-content/uploads/2014/10/3.7.2.jpg', date: '')
nobu_shoreditch = Activity.create!(category: food, title: 'Nobu Shoreditch', location: '10-50 Willow St, London EC2A 4BH', phone: '020 7683 1200', hours: '', description: 'Located inside the contemporary designed Nobu Hotel Shoreditch, this restaurant offest high quality and posh sushi', instagram: 'nobuhotelsshoreditch', price: '£££', age: 0, photo: 'https://www.nobuhotelshoreditch.com/uploads/9/8/6/9/98696408/nobu-clairemenary-com-0803-2-orig_orig.jpg', date: '')
homeslice_pizza = Activity.create!(category: food, title: 'Homeslice Pizza', location: '374-378 Old St, London EC1V 9LT', phone: '020 3151 1121', hours: '', description: 'Creative style pizzas with a stylish vibe, with several locations around london', instagram: 'homesliceldn', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/558d04b2e4b0750606e349c9/55a226d6e4b0417147b993be/55d4371ee4b06405123587a5/1439971103332/_MG_4604.jpg?format=1000w', date: '')
shoreditch_house = Activity.create!(category: food, title: 'Shoreditch House', location: '1 Ebor St, London E1 6AW', phone: '020 7739 5040', hours: '', description: 'Members only club with a great rooftoop pool and several restaurants for the many types of foodies', instagram: 'shoreditchhouse', price: '££', age: 0, photo: 'http://cdn.ltstatic.com/2017/October/BA126693_942long.jpg', date: '')
bun_bun_bun = Activity.create!(category: food, title: 'Bun Bun Bun', location: '134B Kingsland Rd, London E2 8DY', phone: '020 7729 6494', hours: '', description: 'Authentic vietnamese food with simple decor. Also the only place in London to have Bun Cha Hanoi', instagram: 'bunldn', price: '£', age: 0, photo: 'http://www.bunbunbun.co/images/gallery/bunbunbun-07-1464521217.jpg', date: '')
dinerama = Activity.create!(category: food, title: 'Dinerama', location: '19 Great Eastern St, London EC2A 3EJ', phone: '020 3931 1270', hours: '', description: 'Global street food market housing different enviroments', instagram: 'streetfeastldn', price: '£', age: 0, photo: 'https://www.streetfeast.com/wp-content/uploads/2017/01/C44iF5ZVYAEAqxH-1.jpg', date: '')
dumpling_shack = Activity.create!(category: food, title: 'Dumpling Shack', location: '16 Horner Square, London E1 6EW', phone: '', hours: '', description: 'Chinese street food straight from Shanghai with the perfect dumpling', instagram: 'dumplingshack', price: '£', age: 0, photo: 'https://oldspitalfieldsmarket.com/cms/2017/10/Spitalfields-WEB-19.01.18-87.jpg', date: '')
abondance = Activity.create!(category: food, title: 'Abondance', location: '10A Lamb Street, Spitalfields, London E1 6EA', phone: '020 7247 7437', hours: '', description: 'Cheese for days, delicious fondue and raclette', instagram: '', price: '££', age: 0, photo: 'https://oldspitalfieldsmarket.com/cms/2017/09/Androuet-1-720x480.jpg', date: '')
boundary_rooftop = Activity.create!(category: food, title: 'Boundary Rooftop', location: '2-4 Boundary St, London E2 7DD', phone: '020 7729 1051', hours: '', description: 'Because when it is nice outside, why not enjoy a rooftop meal? Mediterranean food & panoramic views of London, whats better?', instagram: 'boundaryldn', price: '£££', age: 0, photo: 'https://www.telegraph.co.uk/content/dam/Travel/hotels/europe/united-kingdom/Hotels%20-%20England/london/boundary-london-rooftop-p.jpg', date: '')
brilliant_corners = Activity.create!(category: food, title: 'Brilliant Corners', location: '470 Kingsland Rd, London E8 4AE', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')
bach = Activity.create!(category: food, title: 'Bach Hoxton', location: '98 Hoxton St, London N1 6SG', phone: '020 7683 1591', hours: '', description: 'Perfect place to get a nice, healthy, and conscious bite with the ability to let your creativity and workflow going', instagram: 'wearethebach', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/56ddb9f960b5e9cd549d4744/579c9e3dc534a564c73232db/579ca68e2e69cf815410952e/1483454515316/IMG_2505.JPG?format=2500w', date: '')


#drinks shoreditch
dinerama_drinks = Activity.create!(category: drink, title: 'Dinerama', location: '19 Great Eastern St, London EC2A 3EJ', phone: '020 3931 1270', hours: '', description: 'Global street food & drink market housing different environments', instagram: 'streetfeastldn', price: '£', age: 0, photo: 'https://www.streetfeast.com/wp-content/uploads/2017/01/C44iF5ZVYAEAqxH-1.jpg', date: '')
shoreditch_house_drinks = Activity.create!(category: drink, title: 'Shoreditch House', location: '1 Ebor St, London E1 6AW', phone: '020 7739 5040', hours: '', description: 'Members only club with a great rooftoop pool and signature cocktails', instagram: 'shoreditchhouse', price: '££', age: 0, photo: 'http://cdn.ltstatic.com/2017/October/BA126693_942long.jpg', date: '')
happiness_forgets = Activity.create!(category: drink, title: 'Happiness Forgets', location: '8-9 Hoxton Square, London, N1 6NU', phone: '020 7613 0325', hours: '', description: 'Speakeasy bar in a tiny low-lit basement', instagram: 'happiness_hoxton', price: '££', age: 18, photo: 'https://static.designmynight.com/uploads/2014/04/Happiness-Forgets-optimised.jpg', date: '')
troy_bar = Activity.create!(category: drink, title: 'Troy Bar', location: '10 Hoxton St, London N1 6NG', phone: '020 7739 6695', hours: '', description: 'Community led bar with Caribbean Soul and live music', instagram: 'troybarofficial', price: '£', age: 18, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/07/e4/a8/59/troy-bar.jpg', date: '')
the_owl_and_pussycat = Activity.create!(category: drink, title: 'The Owl and the Pussycat', location: '34 Redchurch St, London E2 7DP', phone: '020 3487 0088', hours: '', description: 'Community led bar with Caribbean Soul and live music', instagram: 'troybarofficial', price: '£', age: 18, photo: 'https://www.fluidnetwork.co.uk/gfx/venues/19006/owl_pussycat_shoreditch_hoxton_london_pub_bar_06.jpg', date: '')
bar_three = Activity.create!(category: drink, title: 'Bar Three', location: '65a Brushfield St, London E1 6AA', phone: '020 7101 0093', hours: '', description: 'A dark romantic bar, for the cocktail connoseiur', instagram: 'barthreelondon', price: '££', age: 18, photo: 'https://static.standard.co.uk/s3fs-public/thumbnails/image/2016/06/20/18/hawksmoor-spitalfields.jpg?width=1000&height=614&fit=bounds&format=pjpg&auto=webp&quality=70&crop=16:9,offset-y0.5', date: '')
brewhouse_and_kitchen = Activity.create!(category: drink, title: 'Brewhouse & Kitchen', location: '397-400 Geffrye St, London E2 8HZ', phone: '020 3861 8920', hours: '', description: 'All over london, this place offers great beers with the perfectly pairing of snacks', instagram: 'brewhouse_and_kitchen', price: '£', age: 0, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScqaPubegpnZcwxO2ExLWrtxULr38i9U9msXwZbKmxFIFqn2vonQ', date: '')
la_cabina = Activity.create!(category: drink, title: 'La Cabina', location: '232 Kingsland Rd, Dalston, London E2 8AX', phone: '020 3487 0896', hours: '', description: 'Hidden behind a metal door with a telephone bang, this speakeasy tapas and cocktail bar is bound to be a fun night', instagram: '', price: '£', age: 0, photo: 'https://media.timeout.com/images/103068785/1372/772/image.jpg', date: '')
brilliant_corners_drinks = Activity.create!(category: drink, title: 'Brilliant Corners', location: '470 Kingsland Rd, London E8 4AE', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')
the_espresso_martini_society = Activity.create!(category: drink, title: 'The Espresso Martini Society', location: '42 Hanbury St, London E1 5JL', phone: '', hours: '', description: 'Pop up bar serving the largest variety of Espresso Martinis in the world.', instagram: 'espressomartinisociety', price: '££', age: 0, photo: 'https://static.designmynight.com/uploads/2018/09/The-Espresso-Martini-Society1-optimised.jpg', date: '8 November - 15 December 2018')



# adventure shoreditch
spitalfields_market = Activity.create!(category: adventure, title: 'Spitalfields Market', location: '16 Horner Square, London E1 6EW', phone: '', hours: '', description: 'Incredible market home to street food and artists', instagram: 'oldspitalfieldsmarket', price: 'Free', age: 0, photo: 'https://a1.ah-assets.net/uploads/photo/path/4366/retina_SpitalfieldsMarket-10.jpg', date: '')
sculpture_in_the_city = Activity.create!(category: adventure, title: 'Sculpture In the City', location: 'Bishopgate, London EC2M 3TL', phone: '', hours: '', description: 'Open air sculpture exhibition within the Bishopgate Gardens', instagram: 'sculptureinthecity', price: 'Free', age: 0, photo: 'https://www.sculptureinthecity.org.uk/wp-content/uploads/2018/06/Worldwide-web-of-somewheres-1024x683.jpg', date: '')
yayoi_kusuma_gallery = Activity.create!(category: adventure, title: 'Yayoi Kusama: The Moving Moment When I Went to The Universe', location: '16 Wharf Road, London N1 7RW', phone: '020 7336 8109', hours: '', description: 'Amazing works by Yayoi Kusama, known for polka dots, is back with a room made for Instagram.', instagram: '', price: 'Free', age: 0, photo: 'https://images.graph.cool/v1/cj6c28vh912680101ozc2paxj/cjmq3u9x71t5h0105vga6zrzz/0x0:4000x2670/960x960/kusa1110_infinity_mirrored_room_my_heart_is_dancing_into_the_universe_2018_a_lo.jpg', date: '3 October - 21 December 2018')
enigma_quest = Activity.create!(category: adventure, title: 'Enigma Quests - A Harry Potter Themed Escape Room', location: '2-12 Wilson Street, London EC2M 7LS', phone: '020 7377 9220', hours: '', description: 'Solve clues and riddles to escape the room. However, use your wizzardy powers to defeat the Harry Potter games', instagram: '', price: '££', age: 0, photo: 'https://enigmaquests.london/Content/DynamicMedia/Rooms/ListPage/1003_Image.jpg', date: '')
the_kareoke_hole = Activity.create!(category: adventure, title: 'The Kareoke Hole', location: '95 Kingsland High St, London E8 2PB', phone: '020 7254 8860', hours: '', description: 'A kareoke bar hosted by drag queens', instagram: 'thekareokehole', price: '££', age: 0, photo: 'https://media.timeout.com/images/105228746/630/472/image.jpg', date: '')
teamsport_karting = Activity.create!(category: adventure, title: 'TeamSport Karting', location: 'Tower Bridge Business Park, 100 Clements Rd, London SE16 4DG', phone: '0844 998 0000', hours: '', description: 'State-of-the-art karting track with flyover and electronic timing.', instagram: 'teamsportkarting', price: '££', age: 0, photo: 'https://www.team-sport.co.uk/media/2315/web_header_1920x1090_go-karting-1.jpg', date: '')
the_crystal_maze = Activity.create!(category: adventure, title: 'The Crystal Maze', location: '10-14 White Lion St, London N1 9PD', phone: '0161 791 0727', hours: '', description: 'The ultimate team challenge, in which you and your friends face challenges testing your skill, mental and physical ability across four adventure time zones.', instagram: 'thecrystalmaze', price: '£', age: 0, photo: 'https://www.thebottleyard.com/wp-content/uploads/2018/04/Richard-Ayoade-presents-The-Crystal-Maze-image-c-Channel-4.jpg', date: '')
the_arch_climbing_wall = Activity.create!(category: adventure, title: 'The Arch Climbing Wall', location: 'The Biscuit Factory, 100 Clements Rd, London SE16 4DG', phone: '020 7252 1033', hours: '', description: 'Bouldering inside formers Damien Hirst Gallery', instagram: 'archclimbing', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/5b6d8215b1059890c89e29bb/5b71447dcd83663481d1334e/5b71447d0ebbe8405ce9cf5a/1534149762292/026_arch_promo_pano1_RT1.jpg?format=2500w', date: '')




# chill shoreditch
rich_mix = Activity.create!(category: chill, title: 'Rich Mix', location: '35-47 Bethnal Green Rd, London E1 6LA', phone: '020 7613 7498', hours: '', description: 'A melting pot of art and creativity. Combination of the theater, arts, music, and culture', instagram: 'richmixlondon', price: '£', age: 0, photo: 'https://static.designmynight.com/uploads/2014/06/Screen-1-optimised.jpg', date: '')
electric_cinema = Activity.create!(category: chill, title: 'Electric Cinema', location: '3Aubin & Wills Store, 64-66 Redchurch St, London E2 7DP', phone: '020 3350 3490', hours: '', description: 'Luxury single screen cinema, with a full bar and velvet seats. We would say its quiet romantic', instagram: 'electriccinemashoreditch', price: '££', age: 0, photo: 'https://www.electriccinema.co.uk/wp-content/uploads/2018/07/electric-shoreditch-interior.jpg', date: '')
columbia_road_flower_market = Activity.create!(category: chill, title: 'Columbia Road Flower Market', location: 'Columbia Rd, London E2 7RG', phone: '', hours: '', description: 'Opened every sunday, this Flower Market is the perfect place to fill your house with beautiful and not too expensive flowers', instagram: '', price: 'Free', age: 0, photo: 'https://cdn.londonandpartners.com/asset/8f85fee3fb4f2f8fe5344884fe9305ee.jpg', date: '')
turning_earth_ceramics_studio = Activity.create!(category: chill, title: 'Turning Earth Ceramics Studio Hoxton', location: 'Railway Arches, 361-362 Whiston Rd, London E2 8BW', phone: '020 7729 4819', hours: '', description: 'Turning Earth is a community ceramics studio that offers memberships and free workshops', instagram: 'turning.earth', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/55c9e277e4b0e3531a25d061/t/5a3a5d9e0d9297e83b90dce0/1513774575724/Turning+Earth+Hoxton?format=1000w', date: '')
myo_borough = Activity.create!(category: chill, title: 'M.Y.O Borough', location: '82 Redcross Way, London SE1 1HA', phone: '07780 661787', hours: '', description: 'Get your creative juices flowing, build or make crafts while BYOB ', instagram: 'myolondon', price: '£', age: 0, photo: 'https://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_9000,w_1920,f_auto,q_auto/v1/1143869/IMG_20180731_100136375_LL_2_uwm0nn.jpg', date: '')
rough_trade_east = Activity.create!(category: chill, title: 'Rough Trade East', location: 'Old Truman Brewery 91, Brick Ln, London E1 6QL', phone: '020 7392 7788', hours: '', description: 'One of a kind records & cds store that showcases a live mic & gigs', instagram: 'roughtradeeast', price: '£', age: 0, photo: 'https://www.roughtrade.com/assets/stores/rough-trade-east-2-e7a6d4a5d86e348cec661e5f8812eeb9668e4e6b81d9daa608f177dab016548b.jpg', date: '')



puts 'shoreditch activities created!'

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# food - soho
al_dente = Activity.create!(category: food, title: 'Al Dente', location: '51 Goodge Street, London W1T 1TG', phone: '+44 20 7323 2209', hours: '', description: 'A take-away pasta shop where you can indulde in delicious handmade pasta', instagram: 'al_dente_london', price: '£', age: 0, photo: 'https://cdn.vox-cdn.com/thumbor/BzHzPqAU0aQCe7fpT-sMYTzfHXI=/0x0:1245x830/920x613/filters:focal(524x316:722x514):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/60392585/AL_DENTE_Kitchen.0.jpg', date: '')
greek_street = Activity.create!(category: food, title: '10 Greek Street', location: '10 Greek Street, London W1D 4Dh', phone: '020 7734 4677', hours: '', description: 'Sit up at the open kitchen and a couple of small plates of delicious Mediterranean Food', instagram: '10greekstreet', price: '££', age: 0, photo: 'https://www.10greekstreet.com/site/wp-content/uploads/2016/07/Queen-scallops-chorizo.jpg', date: '')
boa_soho = Activity.create!(category: food, title: 'BAO', location: '53 Lexington St, Soho, London W1F 9AS', phone: '020 7734 4677', hours: '', description: 'Expect a bit of a queue, but Bao is worth it. Their bao are delicious and well worth the wait', instagram: 'bao_london', price: '£', age: 0, photo: 'https://media.timeout.com/images/102421329/630/472/image.jpg', date: '')
good_friend = Activity.create!(category: food, title: 'Good Friend', location: '14 Little Newport St, London WC2H 7JJ', phone: '020 7734 2088', hours: '', description: 'The best fried chicken reminiscent of night markets in Taiwan, we recommend the plum seasoning', instagram: 'bao_london', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/5563f7cee4b0658666ce012e/t/577513cb44024398b4b6296a/1467290618970/?format=500w', date: '')
spuntino = Activity.create!(category: food, title: 'Spuntino', location: '61 Rupert St, Soho, London W1D 7PW', phone: '020 7734 4479', hours: '', description: 'Bringing a bit of grungy Brooklyn to London. Spuntino is best know for their small-plates', instagram: 'bao_london', price: '££', age: 0, photo: 'https://static1.squarespace.com/static/5208f480e4b03ad27ab70aa3/547ff92ce4b0f8df179de603/547ffaa6e4b0809df8564013/1457985883964/Spuntino-Denver-Fin-Art-Co-4.JPG?format=500w', date: '')
polpetto = Activity.create!(category: food, title: 'Polpetto', location: '11 Berwick St, Soho, London W1F 0PL', phone: '020 7439 8627', hours: '', description: 'A cosy, Italian restaurant that is perfect for sharing plates.', instagram: 'polpettow1', price: '££', age: 0, photo: 'https://media.timeout.com/images/103651858/630/472/image.jpg', date: '')
koya_soho = Activity.create!(category: food, title: 'Koya', location: '50 Frith Street, London, W1D 4SQ', phone: '020 7494 9075', hours: '', description: 'Delicous Japanese udon noodles is a Koya speciality. Come for hearty portions and low prices', instagram: 'koyalondon', price: '££', age: 0, photo: 'https://media.timeout.com/images/102985954/630/472/image.jpg', date: '')
mele_e_pere = Activity.create!(category: food, title: 'Mele e Pere', location: '46 Brewer Street, London, W1F 9TF', phone: '020 7096 2096', hours: '', description: 'The vibe of a family-run trattoria in Italy, perfect for all occasions', instagram: 'meleeperesoho', price: '£££', age: 0, photo: 'http://mondomulia.com/wp-content/uploads/2015/08/Dinner-Mele-e-Pere-Soho-London-13.gif?x58076', date: '')
barshu = Activity.create!(category: food, title: 'Barshu', location: '28 Frith Street, London, W1D 5LF', phone: '020 7287 8822', hours: '', description: 'Delicous chinese food from the Sichuan province in central China', instagram: 'barshurestaurant', price: '£££', age: 0, photo: 'https://media.timeout.com/images/105179419/630/472/image.jpg', date: '')
inamo = Activity.create!(category: food, title: 'Inamo', location: '134-136 Wardour St, London, W1F 8ZP', phone: '020 7851 7051', hours: '', description: 'The fun interactive menu and fantastic sushi is what makes Inamo the restaurant it is.', instagram: 'inamorestaurant', price: '££', age: 0, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/03/b1/fc/02/inamo.jpg', date: '')
andrew_edmunds = Activity.create!(category: food, title: 'Andrew Edmunds', location: '46 Lexington St, London, W1F 0LP', phone: '020 7437 5708', hours: '', description: 'A stalwart of old Soho serving food such as roast quail', instagram: 'andrew.edmunds', price: '££', age: 0, photo: 'http://www.andrewedmunds.com/uploads/8/8/6/7/8867772/andrew-edmunds-restaurant-soho-london-wine-lobster_1_orig.jpg', date: '')



# drinks - soho
#_____________________________________________________________________________________________________________________________________

aint_nothin_but = Activity.create!(category: drink, title: 'Aint Nothin But', location: '20 Kingly St, Carnaby, London, W1B 5PZ', phone: '020 7287 0514', hours: '', description: 'Modelled on an American style dive bar - expect live music and a great time', instagram: '', price: '£', age: 18, photo: 'http://perfectionistreviews.com/wp-content/uploads/2017/08/39144388765_80dd8adb39_k-1024x768.jpg', date: '')
the_yard = Activity.create!(category: drink, title: 'The Yard', location: '57 Rupert Street, London, W1D 7PL', phone: '020 7437 2652', hours: '', description: 'A beautiful yard with wrap-around balcony with fairy-lights and outdoor heaters', instagram: '', price: '£', age: 18, photo: 'http://yardbar.co.uk/wp-content/uploads/2016/11/venue_courtyard.jpg', date: '')
the_new_evaristo_club = Activity.create!(category: drink, title: 'The New Evaristo Club', location: '57 Greek Street, London, W1D 3DX', phone: '020 7437 9536', hours: '', description: 'Through a nondescript entrance, down the shabby carpeted stairs is the closest thing to a speakeasy in London', instagram: '', price: '£', age: 18, photo: 'https://gaycities-listing-images-production.s3.amazonaws.com/t/largesq/largesq_bars-307178-New-Evaristo-Club-(aka-Trisha-s-aka-The-Hideout)-497b3.jpg', date: '')
bar_americain = Activity.create!(category: drink, title: 'Bar Americain', location: '20 Sherwood St, London, W1F 7ED', phone: '020 7734 4888', hours: '', description: 'A glamorous, Art Deco basement bar with a delicious and extensive cocktail list.', instagram: '', price: '£', age: 18, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/09/f6/dd/5c/bar-americain.jpg', date: '')
tea_room = Activity.create!(category: drink, title: 'Tea Room', location: '23-24 Greek St, London, W1D 4DZ', phone: '', hours: '', description: 'Neon signs and an extensive cocktail list transports you to back to Hong Kong in the 60s', instagram: '', price: '£', age: 18, photo: 'https://cdn.foodism.co.uk/gallery/595cf3d25d444.jpeg', date: '')
cahoots = Activity.create!(category: drink, title: 'Cahoots', location: '13 Kingly Court, London, W1B 5PW', phone: '020 7352 6200', hours: '', description: 'The optimism of post-war Britain, a retro tube carriage and ration inspired cocktails. Booking is essential', instagram: '', price: '££', age: 18, photo: 'https://static.standard.co.uk/s3fs-public/thumbnails/image/2015/03/26/09/Cahootsbar2.jpg?w968', date: '')
marks_bar = Activity.create!(category: drink, title: 'Marks Bar', location: '66-70 Brewer Street', phone: '020 7292 3518', hours: '', description: 'A swanky drinking venue equipped with an apothecary bar and an eccentric cocktail list.', instagram: 'marks.bar', price: '£££', age: 18, photo: 'https://www.hixrestaurants.co.uk/wp-content/uploads/2015/10/11-microsite-4-marks-bars-1-landing-top-banner-5-1600x768.jpg', date: '')
the_blue_posts = Activity.create!(category: drink, title: 'The Blue Posts', location: '28 Rupert St, Soho, London, W1D 6DJ', phone: '', hours: '', description: 'The first floor is a cocktail bar, the ground floor is a pub and the basemet is the restaurant. It has everything that you could need', instagram: '', price: '££', age: 18, photo: 'http://www.streetsensation.co.uk/snaps/blue_posts7.jpg', date: '')
boston = Activity.create!(category: drink, title: '68 and Boston', location: '5 Greek Street, London, W1D 4DD', phone: '020 7287 3713', hours: '', description: 'Another fantastic wine bar which also doubles as a cocktail bar in the evening', instagram: '68andboston', price: '££', age: 18, photo: 'https://static.designmynight.com/uploads/2018/08/Wine-bar-2-optimised.jpg', date: '')

# adventure - soho
#______________________________________________________________________________________________________________________________________
sounds_of_the_universe_store = Activity.create!(category: adventure, title: 'Sounds of the Universe', location: '7 Broadwick St, London, W1F 0DA', phone: '', hours: '', description: 'A record emporium that has a huge mix of music. Has had visitors such as Prince', instagram: 'sounds_of_the_universe', price: 'Free', age: 0, photo: 'https://thevinylfactory.com/wp-content/uploads/2013/04/sounds-of-the-universe_front.png', date: '')
las_vegas = Activity.create!(category: adventure, title: 'Las Vegas', location: '89-91 Wardour st, London, W1F 0UB', phone: '', hours: '', description: 'Retro Arcade!! Las Vegas has everything from Street Fighter to PIU', instagram: '', price: '£', age: 0, photo: 'https://www.lasvegasarcadesoho.co.uk/wp-content/uploads/2018/02/IMG_20180221_021047-e1519474004329.jpg', date: '')
the_photographers_gallery = Activity.create!(category: adventure, title: 'The Photographers Gallery', location: '16-18 Ramillies Street, London, W1F 7LW', phone: '', hours: '', description: 'The first public gallery in the UK solel devopted to photography', instagram: 'thephotographersgallery', price: '£', age: 0, photo: 'https://cdn.londonandpartners.com/asset/d0fdb4548a1a96bbc17ec7b0af191bce.jpg', date: '')
fight_club = Activity.create!(category: adventure, title: 'Fight Club', location: '55 New Oxford Street, London, WC1A 1BS', phone: '020 3019 3093', hours: '', description: 'Set over two floors, Fight Club has 12 oches in total', instagram: '', price: '£', age: 0, photo: 'http://flightclubdarts.com/london/wp-content/uploads/2017/04/flight-club-social-darts-bloomsbury-gallery-970w-06.jpg', date: '')


# chill - soho
#––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
royal_opera_house = Activity.create!(category: chill, title: 'Royal Opera House', location: 'Bow Street, WC2E 9DD', phone: '020 7304 4000', hours: '', description: 'Where people of all ages come for a coffee, meeting or meal and try and see a performance while they are at it', instagram: 'royaloperahouse', price: '££', age: 0, photo: 'https://cdn.thestage.co.uk/wp-content/uploads/2018/06/01163723/Bow-Street-700x455.jpg', date: '')
prince_charles_cinema = Activity.create!(category: chill, title: 'Prince Charles Cinema', location: '7 Leicester Pl, London, WC2H 7BY', phone: '020 7494 3654', hours: '', description: 'Probably the most fun place to watch a film with a super eclectic mix of films to watch', instagram: 'princecharlescinema', price: '£', age: 0, photo: 'https://images.savoysystems.co.uk/PCH/4358085.jpg', date: '')
foyles_cafe = Activity.create!(category: chill, title: 'Foyles Cafe', location: '107 Charing Cross Rd, London, WC2H 0EB', phone: '020 7437 5660', hours: '', description: '5 different floors a fantastic to meet a client for a coffee', instagram: '', price: '£', age: 0, photo: 'https://leafi.co.uk/sites/default/files/styles/slideshowbreakpoints_theme_fusion_starter_wide_1x/public/Foyles_picture_web.jpg?itok=r5ptyv7E', date: '')


# food - chinatown
#________________________________________________________________________________________________________________________________________
golden_gate_cake_shop = Activity.create!(category: food, title: 'Golden Gate Cake Shop', location: '13 Macclesfield St, London, W1D 5BR', phone: ' 020 7287 9862', hours: '', description: 'In this bakery, youll find over 80 kinds of Oriental Cakes', instagram: '', price: '£', age: 0, photo: 'https://c1.staticflickr.com/4/3405/3504112881_e5b63dc520_b.jpg', date: '')
baozi_inn = Activity.create!(category: food, title: 'Baozi Inn', location: '26 Newport Ct, WC2H 7JS', phone: '020 7287 6877', hours: '', description: 'The buns here are made with flour,not rice. It is the perfect place for a grab-and-go lunch', instagram: 'baoziinn_newportct', price: '£', age: 0, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/12/32/73/91/baoziinn-newport-ct.jpg', date: '')
jen_cafe = Activity.create!(category: food, title: 'Jen Cafe', location: '4-8 Newport Place, WC2H 7JP', phone: '', hours: '', description: 'A popular hangout for the youth! Make sure to try their dumplings, they are delicious', instagram: '', price: '£', age: 0, photo: 'http://3.bp.blogspot.com/-qNV4Vhue4rY/UKlTGFlsv-I/AAAAAAAAAUc/hGM4kzzIZk0/s1600/SAM_0469.JPG', date: '')
lotus_garden = Activity.create!(category: food, title: 'Lotus Garden', location: '15A Gerrard St, London, W1D 6JD', phone: '020 7434 2888', hours: '', description: 'This restaurant looks like a traditional Chinese pagoda with delicious BBQ pork', instagram: '', price: '£', age: 0, photo: 'http://lotusgardenchinatown.com/wp-content/uploads/2016/02/cropped-IMG_4063.jpg', date: '')
hot_pot = Activity.create!(category: food, title: 'Hot Pot', location: '17 Wardour Street, London, W1D 6PJ', phone: '', hours: '', description: 'The restaurant revolves around the hot pot, where you cook the food yourselves in the broth', instagram: 'hotpotlondon_', price: '££', age: 0, photo: 'http://static.designmynight.com/uploads/2017/04/hot-pot-london-review.jpg', date: '')
plum_valley = Activity.create!(category: food, title: 'Plum Valley', location: '20 Gerrard St, London, W1D 6JQ', phone: '020 7494 4366', hours: '', description: 'This swanky, dimly lit restaurant attempts to modernise cantonese cooking', instagram: 'plumvalleyrestaurant', price: '££', age: 0, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/08/ef/f1/3c/karaoke-function-room.jpg', date: '')
vietfood = Activity.create!(category: food, title: 'Vietfood', location: '34-36 Wardour St, W1D 6QT', phone: '020 7494 4555', hours: '', description: 'Grab a bowl of their delicous pho by their Michelin-starred chef Jeff Tan', instagram: '', price: '££', age: 0, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/09/a3/bd/1b/viet-food.jpg', date: '')


# drinks - chinatown
# __________________________________________________________________________________________________________________________________________

ku_klub = Activity.create!(category: drink, title: 'Ku Klub', location: '30 Lisle Street, London, WC2H 7BA', phone: '020 7437 4303', hours: '', description: 'Possibly the most famous gay bar in town! It is known for its neon-lit interiors and sexy cocktails', instagram: '', price: '££', age: 18, photo: 'http://www.ku-bar.co.uk/app/default/assets/carousel_images/WebsiteSml-Bar.jpg?v=1520413337', date: '')
the_lyric = Activity.create!(category: drink, title: 'The Lyric', location: '37 Great Windmill St, W1D 7LU', phone: '020 7434 0604', hours: '', description: 'The reliable little pub with Victorian features and a huge range of beers', instagram: '', price: '£', age: 18, photo: 'https://media.timeout.com/images/102924204/630/472/image.jpg', date: '')
cork_and_bottle = Activity.create!(category: drink, title: 'Cork & Bottle', location: '44 Cranbourn St, London, WC2H 7AN', phone: '020 7734 7807', hours: '', description: 'An intimate little cellar is full of cosy nooks and wooden tables', instagram: 'corkandbottlewinebar', price: '££', age: 18, photo: 'http://cdn.ltstatic.com/2007/September/QX892348_942long.jpg', date: '')


# food - south-ken
#--------------------------------------------------------------------------------------------------------------------------
the_hour_glass = Activity.create!(category: food, title: 'The Hour Glass', location: '279 Brompton Road, London, SW3 2DY', phone: '020 7581 2497', hours: '', description: 'Plenty of choice for different beers and the most delicious menu!', instagram: '', price: '££', age: 0, photo: 'https://static1.squarespace.com/static/5614f6bde4b0f9222d311a27/5645c928e4b0f96237e1e9de/56dc43722b8dde60535b31ea/1480920488852/?format=2500w', date: '')
dozo = Activity.create!(category: food, title: 'Dozo', location: '68 Old Brompton Road, SW7 3LQ', phone: '020 7225 0505', hours: '', description: 'With traditional zashiki-style seating with delicious Japanese food', instagram: 'dozo', price: '£££', age: 0, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/0b/1a/d2/26/supreme-eel-front-and.jpg', date: '')
ours = Activity.create!(category: food, title: 'Ours', location: '264 Brompton Road, SW3 2AS', phone: '020 7100 2200', hours: '', description: 'A beautiful interior with space for 120 guests. The food is contemporary with European influences', instagram: 'restaurant_ours', price: '£££', age: 0, photo: 'https://theresident.wpms.greatbritishlife.co.uk/wp-content/uploads/sites/10/2016/09/Restaurant-Ours-Interior-1-600x400.jpg', date: '')
tombo = Activity.create!(category: food, title: 'Tombo', location: '29 Thurloe Pl, London, SW7 2HQ', phone: '020 7589 0018', hours: '', description: 'Healthy Japanese cafe and matcha bar. Get involved with colourful bento boxes and sushi bowls.', instagram: 'tombo_london', price: '£', age: 0, photo: 'https://i.pinimg.com/originals/a2/ad/b1/a2adb1ebf0308815572f4517e1fd5e30.jpg', date: '')
yashin_ocean_house = Activity.create!(category: food, title: 'Yashin Ocean House', location: '119 Old Brompton Road, Kensington', phone: '020 7373 3990', hours: '', description: 'Seriously high-end sushi, using fresh ingredients and chefs that are expert-level knife wielders', instagram: 'yasinlondon', price: '£££', age: 0, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/05/de/74/c0/yashin-ocean-house.jpg', date: '')
goat_chelsea = Activity.create!(category: food, title: 'GOAT Chelsea', location: '333 Fulhan Road, London, SW10 9QL', phone: '020 7352 1384', hours: '', description: 'This is an Italian restaurant mixed with a Gastropub. There is a secret speakeasy upstairs with daily changing codes', instagram: 'goatchelsea', price: '££', age: 0, photo: 'https://www.citykidsmagazine.co.uk/wp-content/uploads/2018/06/180131-GOAT-VENUE.png', date: '')
toms_kitchen = Activity.create!(category: food, title: 'Toms Kitchen', location: '27 Cale Street, London, SW3 3QP', phone: '020 7349 0202', hours: '', description: 'Toms kitchen is a cross between a high end gastropub and a french rustic bistro. It is airy and bright with high ceilings', instagram: 'tomskitchen', price: '£', age: 0, photo: 'https://img.static-bookatable.com/toms-kitchen-chelsea-london-15.jpg?id=b8abd426-f846-407b-be21-074f86fdb833.jpg&404=bat2/404-restaurant.jpg&width=600&height=400&scale=both&mode=crop', date: '')




#activities tags
# -------------------------------------------------------------------------------------
puts 'Creating tags...'

# number of people
alone = Tag.create!(name: 'alone')
couple = Tag.create!(name: 'couple')
small_group = Tag.create!(name: 'small group')
large_group = Tag.create!(name: 'large group')

#who are you with?
parents = Tag.create!(name: 'parents')
friends = Tag.create!(name: 'friends')
mistress = Tag.create!(name: 'mistress')
partner = Tag.create!(name: 'partner')
co_worker = Tag.create!(name: 'co worker')
someone_from_out_of_town = Tag.create!(name: 'someone from out of town')
grandparents = Tag.create!(name: 'grandparents')
the_boys = Tag.create!(name: 'the boys')
the_girls = Tag.create!(name: 'the girls')
boss = Tag.create!(name: 'boss')
family = Tag.create!(name: 'family')


#locations in london

soho = Tag.create!(name: 'soho')
west_end = Tag.create!(name: 'west end')
southbank = Tag.create!(name: 'southbank')
city_of_london = Tag.create!(name: 'city of london')
chinatown = Tag.create!(name: 'chinatown')
camden_town = Tag.create!(name: 'camden town')
islington = Tag.create!(name: 'islington')
hamstead = Tag.create!(name: 'hamstead')
notting_hill = Tag.create!(name: 'notting hill')
south_kensington = Tag.create!(name: 'south kensington')
shoreditch = Tag.create!(name: 'shoreditch')
peckham = Tag.create!(name: 'peckham')
brixton = Tag.create!(name: 'brixton')

#vibe
romantic = Tag.create!(name: 'romantic')
sexy = Tag.create!(name: 'sexy')
chill = Tag.create!(name: 'chill')
quiet = Tag.create!(name: 'quiet')
swanky = Tag.create!(name: 'swanky')
loud = Tag.create!(name: 'loud')
swanky = Tag.create!(name: 'swanky')
trendy = Tag.create!(name: 'trendy')
posh = Tag.create!(name: 'posh')
discreet = Tag.create!(name: 'discreet')
with_a_view = Tag.create!(name: 'with a view')

#and (i want to ...)
dance = Tag.create!(name: 'dance')
live_music = Tag.create!(name: 'live music')
celebrate = Tag.create!(name: 'celebrate')
best_deals = Tag.create!(name: 'best deals')
talk_business = Tag.create!(name: 'talk business')
im_game_for_anything = Tag.create!(name: 'im game for anything')
treat_myself = Tag.create!(name: 'treat myself')
pop_up = Tag.create!(name: 'pop up')


#food special filters
coffee = Tag.create!(name: 'coffee')
snacks = Tag.create!(name: 'snacks')
brunch = Tag.create!(name: 'brunch')
lunch = Tag.create!(name: 'lunch')
dinner = Tag.create!(name: 'dinner')
late_night = Tag.create!(name: 'late night')
sweets = Tag.create!(name: 'sweets')
vegetarian = Tag.create!(name: 'vegetarian')
vegan = Tag.create!(name: 'vegan')
pizza = Tag.create!(name: 'pizza')
sushi = Tag.create!(name: 'sushi')
steak = Tag.create!(name: 'steak')
healthy = Tag.create!(name: 'healthy')
street_food = Tag.create!(name: 'street food')

#drinks special filters
speakeasy = Tag.create!(name: 'speakeasy')
martinis = Tag.create!(name: 'martinis')
hotel_bar = Tag.create!(name: 'hotel_bar')
bougie_cocktails = Tag.create!(name: 'bougie cocktails')
rave = Tag.create!(name: 'rave')
see_a_performance = Tag.create!(name: 'see a performance')
pub = Tag.create!(name: 'pub')

#adventure special filters
get_dirty = Tag.create!(name: 'get dirty')
break_a_sweat = Tag.create!(name: 'break_a_sweat')
gallery = Tag.create!(name: 'gallery')
market = Tag.create!(name: 'market')
cultural_trip = Tag.create!(name: 'cultural_trip')
fast_and_furious = Tag.create!(name: 'fast_and_furious')
problem_solve = Tag.create!(name: 'problem solve')



#chill special filters
detox = Tag.create!(name: 'detox')
indoors = Tag.create!(name: 'indoors')
outdoors = Tag.create!(name: 'outdoors')


puts 'Tags created!'


#adding tags to activities
# -------------------------------------------------------------------------------------
puts 'Adding tags to activities...'

#tags for shoreditch food
#-------------------------------------------------------------------------------------
visionscanteen_tags = [alone, small_group, friends, shoreditch, chill, trendy, healthy, brunch, coffee, snacks]
visionscanteen_tags.each do |tag|
  ActivityTag.create(activity: visions_canteen, tag: tag)
end

onthebab_tags = [small_group, friends, shoreditch, chill, trendy, discreet, lunch, snacks]
onthebab_tags.each do |tag|
  ActivityTag.create(activity: on_the_bab, tag: tag)
end

leroy_tags = [small_group, parents, grandparents, partner, boss, shoreditch, quiet, posh, talk_business, dinner]
leroy_tags.each do |tag|
  ActivityTag.create(activity: leroy, tag: tag)
end

dishoom_tags = [large_group, couple, parents, friends, co_worker, someone_from_out_of_town, partner, shoreditch, romantic, loud, trendy, celebrate, im_game_for_anything, dinner, lunch, vegetarian]
dishoom_tags.each do |tag|
  ActivityTag.create(activity: dishoom, tag: tag)
end

nobu_shoreditch_tags = [couple, large_group, parents, friends, the_girls, mistress, partner, boss, shoreditch, romantic, loud, swanky, posh, treat_myself, dinner, celebrate, sushi]
nobu_shoreditch_tags.each do |tag|
  ActivityTag.create(activity: nobu_shoreditch, tag: tag)
end

homeslice_pizza_tags = [alone, small_group, large_group, friends, co_worker, the_boys, shoreditch, chill, trendy, loud, celebrate, pizza, lunch, dinner, snacks]
homeslice_pizza_tags.each do |tag|
  ActivityTag.create(activity: homeslice_pizza, tag: tag)
end

shoreditch_house_tags = [alone, small_group, grandparents, parents, couple, large_group, someone_from_out_of_town, friends, mistress, boss, shoreditch, loud, romantic, trendy, with_a_view, talk_business, dance, celebrate, lunch, brunch, dinner, pizza, healthy, vegetarian]
shoreditch_house_tags.each do |tag|
  ActivityTag.create(activity: shoreditch_house, tag: tag)
end

bun_bun_bun_tags = [small_group, couple, friends, co_worker, the_girls, shoreditch, chill, discreet, lunch, snacks, dinner, street_food]
bun_bun_bun_tags.each do |tag|
  ActivityTag.create(activity: bun_bun_bun, tag: tag)
end

dinerma_tags = [small_group, large_group, friends, co_worker, someone_from_out_of_town, the_girls, the_boys, shoreditch, loud, trendy, celebrate, im_game_for_anything, dance, snacks, street_food]
dinerma_tags.each do |tag|
  ActivityTag.create(activity: dinerama, tag: tag)
end

dumplingshack_tags = [alone, small_group, large_group, friends, co_worker, the_girls, the_boys, shoreditch, loud, trendy, im_game_for_anything, snacks, street_food, lunch]
dumplingshack_tags.each do |tag|
  ActivityTag.create(activity: dumpling_shack, tag: tag)
end

abondance_tags = [small_group, couple, friends, partner, the_girls, shoreditch, discreet, romantic, quiet, snacks, dinner]
abondance_tags.each do |tag|
  ActivityTag.create(activity: abondance, tag: tag)
end

boundary_rooftop_tags = [small_group, couple, friends, partner, the_girls, shoreditch, loud, swanky, romantic, with_a_view, celebrate, dinner]
boundary_rooftop_tags.each do |tag|
  ActivityTag.create(activity: boundary_rooftop, tag: tag)
end

brilliant_corners_tags = [small_group, couple, partner, boss, shoreditch, quiet, trendy, romantic, chill, talk_business, celebrate, dinner]
brilliant_corners_tags.each do |tag|
  ActivityTag.create(activity: brilliant_corners, tag: tag)
end

bach_tags = [alone, small_group, friends, grandparents, co_worker, shoreditch, chill, talk_business, coffee, snacks, healthy, vegetarian, lunch, vegan]
bach_tags.each do |tag|
  ActivityTag.create(activity: bach, tag: tag)
end

#tags for shoreditch drink
#-------------------------------------------------------------------------------------
shoreditch_house_drinks_tags = [alone, small_group, large_group, friends, someone_from_out_of_town,  co_worker, shoreditch, chill, talk_business, loud, romantic, bougie_cocktails]
shoreditch_house_drinks_tags.each do |tag|
  ActivityTag.create(activity: shoreditch_house_drinks, tag: tag)
end

dinerma_drinks_tags = [small_group, large_group, friends, co_worker, someone_from_out_of_town, the_girls, the_boys, shoreditch, loud, trendy, celebrate, im_game_for_anything, dance, snacks, street_food]
dinerma_drinks_tags.each do |tag|
  ActivityTag.create(activity: dinerama_drinks, tag: tag)
end


happiness_forgets_tags = [couple, partner, parents, friends, mistress, shoreditch, romantic, sexy, chill, quiet, discreet, speakeasy, martinis]
happiness_forgets_tags.each do |tag|
  ActivityTag.create(activity: happiness_forgets, tag: tag)
end

troy_bar_tags = [small_group, large_group, friends, co_worker, shoreditch, the_boys, chill, live_music, dance, best_deals, im_game_for_anything, speakeasy]
troy_bar_tags.each do |tag|
  ActivityTag.create(activity: troy_bar, tag: tag)
end

the_owl_and_pussycat_tags = [small_group, parents, grandparents, shoreditch, large_group, friends, co_worker, the_boys, loud, pub, im_game_for_anything]
the_owl_and_pussycat_tags.each do |tag|
  ActivityTag.create(activity: the_owl_and_pussycat, tag: tag)
end

bar_three_tags = [small_group, couple, parents, partner, friends, boss, shoreditch, the_boys, the_girls, romantic, quiet, swanky, im_game_for_anything, bougie_cocktails]
bar_three_tags.each do |tag|
  ActivityTag.create(activity: bar_three, tag: tag)
end

brewhouse_and_kitchen_tags = [large_group, alone, friends, co_worker, the_boys, quiet, shoreditch, chill, best_deals, im_game_for_anything, snacks, pub]
brewhouse_and_kitchen_tags.each do |tag|
  ActivityTag.create(activity: brewhouse_and_kitchen, tag: tag)
end

la_cabina_tags = [small_group, couple, friends, partner, the_boys, chill, speakeasy, shoreditch, im_game_for_anything]
la_cabina_tags.each do |tag|
  ActivityTag.create(activity: la_cabina, tag: tag)
end

brilliant_corners_drinks_tags = [small_group, couple, friends, partner, the_girls, shoreditch, boss, chill, speakeasy, im_game_for_anything, live_music, bougie_cocktails]
brilliant_corners_drinks_tags.each do |tag|
  ActivityTag.create(activity: brilliant_corners_drinks, tag: tag)
end

the_espresso_martini_society_tags = [couple, partner, chill, pop_up, im_game_for_anything, shoreditch, bougie_cocktails]
the_espresso_martini_society_tags.each do |tag|
  ActivityTag.create(activity: the_espresso_martini_society, tag: tag)
end


#tags for shoreditch adventure
#-------------------------------------------------------------------------------------
spitalfields_market_tags = [alone, small_group, large_group, friends, co_worker, parents, shoreditch, loud, trendy, chill, someone_from_out_of_town, street_food, cultural_trip, market]
spitalfields_market_tags.each do |tag|
  ActivityTag.create(activity: spitalfields_market, tag: tag)
end

sculpture_in_the_city_tags = [alone, small_group, couple, friends, parents, grandparents, chill, quiet, trendy, shoreditch, someone_from_out_of_town, cultural_trip, gallery]
sculpture_in_the_city_tags.each do |tag|
  ActivityTag.create(activity: sculpture_in_the_city, tag: tag)
end

yayoi_kusuma_gallery_tags = [alone, couple, friends, parents, grandparents, shoreditch, someone_from_out_of_town, cultural_trip, gallery, trendy, chill, swanky]
yayoi_kusuma_gallery_tags.each do |tag|
  ActivityTag.create(activity: yayoi_kusuma_gallery, tag: tag)
end

enigma_quest_tags = [small_group, large_group, friends, co_worker, shoreditch, someone_from_out_of_town, problem_solve, loud, chill]
enigma_quest_tags.each do |tag|
  ActivityTag.create(activity: enigma_quest, tag: tag)
end

the_kareoke_hole_tags = [small_group, large_group, friends, co_worker, shoreditch, someone_from_out_of_town, trendy, loud, chill]
the_kareoke_hole_tags.each do |tag|
  ActivityTag.create(activity: the_kareoke_hole, tag: tag)
end

teamsport_karting_tags = [small_group, large_group, friends, co_worker, the_boys, shoreditch, trendy, loud, chill, fast_and_furious, break_a_sweat]
teamsport_karting_tags.each do |tag|
  ActivityTag.create(activity: teamsport_karting, tag: tag)
end

the_crystal_maze_tags = [large_group, friends, co_worker, shoreditch, trendy, loud, fast_and_furious, cultural_trip, someone_from_out_of_town]
the_crystal_maze_tags.each do |tag|
  ActivityTag.create(activity: the_crystal_maze, tag: tag)
end

the_arch_climbing_wall_tags = [large_group, small_group, alone, friends, co_worker, shoreditch, loud, fast_and_furious, cultural_trip, someone_from_out_of_town, break_a_sweat]
the_arch_climbing_wall_tags.each do |tag|
  ActivityTag.create(activity: the_arch_climbing_wall, tag: tag)
end

#tags for shoreditch chill
#-------------------------------------------------------------------------------------
rich_mix_tags = [alone, couple, small_group, friends, partner, parents, grandparents, family, shoreditch, quiet, chill, cultural_trip, someone_from_out_of_town, indoors]
rich_mix_tags.each do |tag|
  ActivityTag.create(activity: rich_mix, tag: tag)
end

electric_cinema_tags = [alone, couple, friends, partner, parents, grandparents, mistress, family, shoreditch, romantic, sexy, quiet, chill, cultural_trip, indoors]
electric_cinema_tags.each do |tag|
  ActivityTag.create(activity: electric_cinema, tag: tag)
end

columbia_road_flower_market_tags = [alone, couple, friends, partner, parents, grandparents, family, shoreditch, quiet, chill, cultural_trip, outdoors, someone_from_out_of_town]
columbia_road_flower_market_tags.each do |tag|
  ActivityTag.create(activity: columbia_road_flower_market, tag: tag)
end

turning_earth_ceramics_studio_tags = [alone, couple, small_group, friends, partner, parents, grandparents, family, shoreditch, chill, cultural_trip, indoors]
turning_earth_ceramics_studio_tags.each do |tag|
  ActivityTag.create(activity: turning_earth_ceramics_studio, tag: tag)
end

myo_borough_tags = [couple, small_group, large_group, friends, partner, co_worker, family, shoreditch, loud, chill, indoors]
myo_borough_tags.each do |tag|
  ActivityTag.create(activity: myo_borough, tag: tag)
end

rough_trade_east_tags = [couple, small_group, large_group, friends, partner, co_worker, shoreditch, loud, chill, indoors, outdoors, live_music, dance]
rough_trade_east_tags.each do |tag|
  ActivityTag.create(activity: rough_trade_east, tag: tag)
end

puts 'Tags added!'


# tags for soho food
#______________________________________________________________________________________________________________________________-

al_dente_tags = [alone, small_group, co_worker, soho, chill, trendy, quiet, lunch, street_food, snacks, pop_up]
al_dente_tags.each do |tag|
  ActivityTag.create(activity: al_dente, tag: tag)
end

greek_street_tags = [couple, small_group, large_group, parents, partner, the_girls, soho, chill, trendy, dinner, lunch, late_night, celebrate, talk_business]
greek_street_tags.each do |tag|
  ActivityTag.create(activity: greek_street, tag: tag)
end

bao_soho_tags = [alone, small_group, friends, co_worker, partner, soho, chill, trendy, lunch, best_deals, celebrate, im_game_for_anything]
bao_soho_tags.each do |tag|
  ActivityTag.create(activity: boa_soho, tag: tag)
end

good_friend_tags = [alone, small_group, friends, co_worker, soho, chill, quiet, lunch, late_night, best_deals]
good_friend_tags.each do |tag|
  ActivityTag.create(activity: good_friend, tag: tag)
end

spuntino_tags = [couple, small_group, large_group, friends, mistress, the_boys, someone_from_out_of_town, soho, sexy, trendy, dinner, late_night, celebrate, dance, im_game_for_anything, street_food]
spuntino_tags.each do |tag|
  ActivityTag.create(activity: spuntino, tag: tag)
end

polpetto_tags = [couple, small_group, parents, grandparents, family, the_girls, boss, soho, chill, trendy, dinner, lunch, celebrate, talk_business, pizza]
polpetto_tags.each do |tag|
  ActivityTag.create(activity: polpetto, tag: tag)
end

koya_soho_tags = [alone, small_group, large_group, co_worker, friends, family, soho, chill, trendy, lunch, sushi, talk_business, dinner, street_food]
koya_soho_tags.each do |tag|
  ActivityTag.create(activity: koya_soho, tag: tag)
end

mele_e_pere_tags = [couple, small_group, large_group, mistress, partner, someone_from_out_of_town, grandparents, boss, soho, romantic, trendy, swanky, discreet, sexy, dinner, pizza, celebrate, im_game_for_anything, treat_myself]
mele_e_pere_tags.each do |tag|
  ActivityTag.create(activity: mele_e_pere, tag: tag)
end

barshu_tags = [alone, small_group, large_group, friends, co_worker, the_boys, soho, chill, quiet, lunch, dinner, vegetarian, pop_up, im_game_for_anything]
barshu_tags.each do |tag|
  ActivityTag.create(activity: barshu, tag: tag)
end

inamo_tags = [couple, small_group, large_group, friends, partner, the_girls, someone_from_out_of_town, mistress, family, the_boys, soho, sexy, trendy, discreet, sexy, dinner, sushi, celebrate, im_game_for_anything, treat_myself]
inamo_tags.each do |tag|
  ActivityTag.create(activity: inamo, tag: tag)
end

andrew_edmunds_tags = [alone, small_group, mistress, family, boss, grandparents, parents, soho, chill, quiet, discreet, talk_business, dinner, lunch, best_deals]
andrew_edmunds_tags.each do |tag|
  ActivityTag.create(activity: andrew_edmunds, tag: tag)
end

#tags for soho drinks
#________________________________________________________________________________________________________________________
aint_nothin_but_tags = [small_group, large_group, the_boys, someone_from_out_of_town, boss, soho, sexy, trendy, dance, live_music, im_game_for_anything, rave, see_a_performance]
aint_nothin_but_tags.each do |tag|
  ActivityTag.create(activity: aint_nothin_but, tag: tag)
end

the_yard_tags = [small_group, large_group, the_boys, someone_from_out_of_town, family, soho, sexy, trendy, dance, romantic, im_game_for_anything, outdoors]
the_yard_tags.each do |tag|
  ActivityTag.create(activity: the_yard, tag: tag)
end

the_new_evaristo_club_tags = [couple, small_group, large_group, the_boys, someone_from_out_of_town, family, boss, co_worker, mistress, soho, sexy, trendy, discreet, quiet, im_game_for_anything, celebrate, speakeasy, bougie_cocktails]
the_new_evaristo_club_tags.each do |tag|
  ActivityTag.create(activity: the_new_evaristo_club, tag: tag)
end

bar_americain_tags = [couple, alone, small_group, the_boys, someone_from_out_of_town, family, mistress, partner, parents, grandparents, soho, sexy, swanky, posh, discreet, romantic, treat_myself, bougie_cocktails]
bar_americain_tags.each do |tag|
  ActivityTag.create(activity: bar_americain, tag: tag)
end

tea_room_tags = [couple, small_group, someone_from_out_of_town, family, boss, mistress, partner, soho, sexy, trendy, im_game_for_anything, celebrate, talk_business]
tea_room_tags.each do |tag|
  ActivityTag.create(activity: tea_room, tag: tag)
end

cahoots_tags = [small_group, large_group, the_boys, the_girls, someone_from_out_of_town, friends, partner, soho, sexy, trendy, swanky, im_game_for_anything, live_music, treat_myself, live_music]
cahoots_tags.each do |tag|
  ActivityTag.create(activity: cahoots, tag: tag)
end

marks_bar_tags = [small_group, large_group, the_boys, the_girls, someone_from_out_of_town, boss, partner, mistress, soho, sexy, trendy, swanky, posh, discreet, im_game_for_anything, celebrate, treat_myself, talk_business, hotel_bar, bougie_cocktails]
marks_bar_tags.each do |tag|
  ActivityTag.create(activity: marks_bar, tag: tag)
end

the_blue_posts_tags = [alone, couple,small_group, large_group, parents, grandparents, co_worker, friends, family, soho, chill, trendy, pub]
the_blue_posts_tags.each do |tag|
  ActivityTag.create(activity: the_blue_posts, tag: tag)
end

boston_tags = [couple, small_group, boss, co_worker, parents, grandparents, family, mistress, soho, sexy, trendy, swanky, posh, discreet, celebrate, treat_myself, talk_business, hotel_bar, bougie_cocktails, martinis]
boston_tags.each do |tag|
  ActivityTag.create(activity: boston, tag: tag)
end

# tags for soho adventure
#____________________________________________________________________________________________________________________________
sounds_of_the_universe_store_tags = [large_group, small_group, alone, friends, family, partner, the_boys, soho, chill, indoors, cultural_trip, someone_from_out_of_town, quiet]
sounds_of_the_universe_store_tags.each do |tag|
  ActivityTag.create(activity: sounds_of_the_universe_store, tag: tag)
end

las_vegas_tags = [large_group, small_group, couple, friends, partner, co_worker, the_boys, the_girls, soho, trendy, indoors, break_a_sweat, someone_from_out_of_town, fast_and_furious]
las_vegas_tags.each do |tag|
  ActivityTag.create(activity: las_vegas, tag: tag)
end

the_photographers_gallery_tags = [large_group, small_group, couple, alone, friends, family, grandparents, co_worker, partner, soho, chill, quiet, indoors, gallery, cultural_trip]
the_photographers_gallery_tags.each do |tag|
  ActivityTag.create(activity: the_photographers_gallery, tag: tag)
end

fight_club_tags = [large_group, small_group, couple, friends, partner, co_worker, the_boys, the_girls, soho, trendy, indoors, celebrate, someone_from_out_of_town]
fight_club_tags.each do |tag|
  ActivityTag.create(activity: fight_club, tag: tag)
end


#tags for Soho chill
#-------------------------------------------------------------------------------------------------------------
royal_opera_house_tags = [couple, small_group, large_group, alone, friends, partner, family, grandparents, soho, quiet, chill, indoors, live_music, treat_myself]
royal_opera_house_tags.each do |tag|
  ActivityTag.create(activity: royal_opera_house, tag: tag)
end

prince_charles_cinema_tags = [couple, small_group, alone, friends, partner, mistress, the_girls, soho, trendy, chill, indoors, discreet]
prince_charles_cinema_tags.each do |tag|
  ActivityTag.create(activity: prince_charles_cinema, tag: tag)
end

foyles_cafe_tags = [couple, small_group, large_group, alone, co_worker, boss, family, grandparents, soho, quiet, chill, discreet, talk_business]
foyles_cafe_tags.each do |tag|
  ActivityTag.create(activity: foyles_cafe, tag: tag)
end


#tags for Chinatown food
#____________________________________________________________________________________________________________________
golden_gate_cake_shop_tags = [couple, small_group, the_girls, someone_from_out_of_town, family, grandparents, chinatown, trendy, swanky, im_game_for_anything, sweets, street_food]
golden_gate_cake_shop_tags.each do |tag|
  ActivityTag.create(activity: golden_gate_cake_shop, tag: tag)
end

baozi_inn_tags = [couple, alone, small_group, friends, someone_from_out_of_town, partner, chinatown, chill, sushi, street_food, pop_up]
baozi_inn_tags.each do |tag|
  ActivityTag.create(activity: baozi_inn, tag: tag)
end

jen_cafe_tags = [couple, small_group, friends, co_worker, chinatown, chill, quiet, im_game_for_anything, lunch]
jen_cafe_tags.each do |tag|
  ActivityTag.create(activity: jen_cafe, tag: tag)
end

lotus_garden_tags = [small_group, large_group, the_boys, the_girls, parents, friends, chinatown, chill, trendy, im_game_for_anything, lunch, dinner]
lotus_garden_tags.each do |tag|
  ActivityTag.create(activity: lotus_garden, tag: tag)
end

hot_pot_tags = [small_group, large_group, couple, the_boys, the_girls, someone_from_out_of_town, boss, partner, mistress, friends, parents, chinatown, sexy, trendy, swanky, im_game_for_anything, celebrate, treat_myself, talk_business, sushi, dinner]
hot_pot_tags.each do |tag|
  ActivityTag.create(activity: hot_pot, tag: tag)
end

plum_valley_tags = [couple, small_group, parents, partner, co_worker, friends, family, chinatown, chill, lunch, dinner, sushi]
plum_valley_tags.each do |tag|
  ActivityTag.create(activity: plum_valley, tag: tag)
end

vietfood_tags = [couple, small_group, alone, boss, co_worker, partner, friends, someone_from_out_of_town, chinatown, trendy, talk_business, lunch, snacks, street_food]
vietfood_tags.each do |tag|
  ActivityTag.create(activity: vietfood, tag: tag)
end


#tags for Chinatown drinks
#_____________________________________________________________________________________________________________________

ku_klub_tags = [partner, large_group, couple, the_boys, the_girls, someone_from_out_of_town, friends, chinatown, sexy, trendy, swanky, im_game_for_anything, dance, live_music, break_a_sweat]
ku_klub_tags.each do |tag|
  ActivityTag.create(activity: ku_klub, tag: tag)
end

the_lyric_tags = [couple, small_group, large_group, alone, boss, co_worker, friends, the_boys, chinatown, chill, quiet, discreet, talk_business, best_deals, pub]
the_lyric_tags.each do |tag|
  ActivityTag.create(activity: the_lyric, tag: tag)
end

cork_and_bottle_tags = [couple, small_group, boss, co_worker, partner, family, someone_from_out_of_town, grandparents, chinatown, trendy, posh, swanky, talk_business, lunch, hotel_bar]
cork_and_bottle_tags.each do |tag|
  ActivityTag.create(activity: cork_and_bottle, tag: tag)
end


# tags for south ken - food
#–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
the_hour_glass_tags = [couple, small_group, large_group, parents, the_girls, someone_from_out_of_town, family, grandparents, partner, boss, south_kensington, trendy, posh, quiet, celebrate, lunch, dinner, talk_business]
the_hour_glass_tags.each do |tag|
  ActivityTag.create(activity: the_hour_glass, tag: tag)
end

dozo_tags = [couple, alone, small_group, friends, someone_from_out_of_town, partner, co_worker, south_kensington, chill, sushi, lunch, dinner, celebrate, im_game_for_anything]
dozo_tags.each do |tag|
  ActivityTag.create(activity: dozo, tag: tag)
end

ours_tags = [couple, small_group, large_group, friends, co_worker, boss, grandparents, the_girls, the_boys, friends, partner, parents, south_kensington, sexy, romantic, celebrate, talk_business, im_game_for_anything, dinner]
ours_tags.each do |tag|
  ActivityTag.create(activity: ours, tag: tag)
end

tombo_tags = [small_group, alone, the_boys, co_worker, friends, south_kensington, chill, quiet, trendy, healthy, lunch, dinner, street_food, sushi]
tombo_tags.each do |tag|
  ActivityTag.create(activity: tombo, tag: tag)
end

yashin_ocean_house_tags = [small_group, large_group, couple, boss, the_girls, someone_from_out_of_town, the_boys, partner, mistress, grandparents, parents, south_kensington, sexy, trendy, swanky, posh, im_game_for_anything, celebrate, treat_myself, talk_business, sushi, dinner, lunch]
yashin_ocean_house_tags.each do |tag|
  ActivityTag.create(activity: yashin_ocean_house, tag: tag)
end

goat_chelsea_tags = [couple, small_group, large_group, parents, partner, grandparents, friends, family, south_kensington, chill, lunch, posh, trendy, vegetarian, pizza]
goat_chelsea_tags.each do |tag|
  ActivityTag.create(activity: plum_valley, tag: tag)
end

toms_kitchen_tags = [couple, small_group, large_group, boss, co_worker, partner, friends, parents, someone_from_out_of_town, south_kensington, trendy, talk_business, lunch, snacks, street_food, vegan, vegetarian, dinner, pizza]
toms_kitchen_tags.each do |tag|
  ActivityTag.create(activity: toms_kitchen, tag: tag)
end


