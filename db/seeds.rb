require "open-uri"
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
Review.destroy_all
Timeslot.destroy_all
Booking.destroy_all
Category.destroy_all
SubCategory.destroy_all
Service.destroy_all

# user1 = User.create!(
#   first_name: 'Amina',
#   last_name: 'Ghafor',
#   email: 'aghafor@gmail.com',
#   avatar_url: 'https://seedlegals.com/wp-content/uploads/2022/11/Amina-Ghafor.jpg',
#   is_hotel: false,
#   bio: 'Passionate about mathematics and helping students succeed.',
#   address: '12 Great Malborough Street, N1 4AY London',
#   password: '123456',
#   phone_number: 621 266 668
# )

user1 = User.create!(
  first_name: 'Alice',
  last_name: 'Johnson',
  hotel_name: "",
  email: 'alice@gmail.com',
  is_hotel: false,
  bio: 'Fitness enthusiast',
  address: 'Carrer Joan guell 89, Barcelona',
  latitude: 41.380000,
  longitude: 2.132650,
  password: 'password1',
  phone_number: '655-222-222'
)

user2 = User.create!(
  first_name: 'Bob',
  last_name: 'Smith',
  hotel_name: "Hotel El Palace",
  email: 'bob@elpalace.com',
  is_hotel: true,
  bio: 'Hotel El Palace Barcelona is located in Eixample District, close to the Ramblas, the main shopping area and Barcelona’s main tourist attractions. It offers a Mayan-style luxury spa. A limousine service with a chauffeur is available on request.',
  address: 'Gran Via de les Corts Catalanes, 668, Eixample, 08010 Barcelona, Spain',
  latitude: 41.391570,
  longitude: 2.171570,
  password: 'password2',
  phone_number: '655-333-333',
)
avatar2 = URI.open("https://www.vendomtalents.com/image/logos/logo-el-palace-barcelona-387-.png")
user2.avatar.attach(io: avatar2, filename: "avatar2")
user2.save

user3 =User.create!(
  first_name: 'Charlie',
  last_name: 'Brown',
  hotel_name: "",
  email: 'charlie@gmail.com',
  is_hotel: false,
  bio: 'Artist',
  address: 'C/ del Bruc, 149, 08037 Barcelona',
  latitude: 41.398760,
  longitude: 2.163460,
  password: 'password3',
  phone_number: '655-444-444',
)

user4 = User.create!(
  first_name: 'Diana',
  last_name: 'Johnson',
  hotel_name: "Claris Hotel & Spa GL",
  email: 'diana@hotelgl.com',
  is_hotel: true,
  bio: "Located just off Barcelona’s prestigious Passeig de Gràcia Boulevard, this luxury hotel offers city views from its rooftop pool. It also has a unique art collection",
  address: 'Pau Claris, 150, Eixample, 08009 Barcelona, Spain',
  latitude: 41.394371,
  longitude: 2.165310,
  password: 'password4',
  phone_number: '655-555-555',
)
user5 = User.create!(
  first_name: 'Eva',
  last_name: 'Williams',
  hotel_name: "",
  email: 'eva@gmail.com',
  is_hotel: false,
  bio: 'Chef',
  address: 'Carrer de Siracusa, 15, 08012 Barcelona',
  latitude: 41.400950,
  longitude: 2.159570,
  password: 'password5',
  phone_number: '655-666-666',
)

user6 = User.create!(
  first_name: 'Frank',
  last_name: 'Miller',
  hotel_name: "Le Meridien Barcelona",
  email: 'frank@lemeridien.com',
  is_hotel: true,
  bio: 'Frequently hosting world-famous celebrities, this prestigious hotel is located on Barcelona’s famous Las Ramblas. Le Méridien’s stylish rooms feature flat-screen TVs, a music system and iPod dock',
  address: 'Ramblas, 111, Ciutat Vella, 08002 Barcelona, Spain',
  latitude: 41.3838156,
  longitude: 2.170924,
  password: 'password6',
  phone_number: '655-777-777',
)

user7 = User.create!(
  first_name: 'Grace',
  last_name: 'Smith',
  hotel_name: "",
  email: 'grace@gmail.com',
  is_hotel: false,
  bio: 'Yoga Instructor',
  address: 'Carrer del Comte d Urgell, 168, 08036 Barcelona',
  latitude: 41.3868818,
  longitude: 2.1528608,
  password: 'password7',
  phone_number: '655-888-888',
)

user8 = User.create!(
  first_name: 'Harry',
  last_name: 'Johnson',
  hotel_name: "Monument Hotel",
  email: 'harry@monumenthotel.com',
  is_hotel: true,
  bio: "Located on the fashionable Paseo de Gracia, within 5 minutes’ walk from both Gaudi’s masterpieces Casa Battló and La Pedrera, Monument Hotel offers luxury services including a gourmet restaurant and a spa",
  address: 'Paseo de Gracia, 75, Eixample, 08008 Barcelona, Spain',
  latitude: 41.3938375,
  longitude: 2.1621223,
  password: 'password8',
  phone_number: '655-999-999'
)

user9 = User.create!(
  first_name: 'Ivy',
  last_name: 'Martin',
  hotel_name: "",
  email: 'ivy@gmail.com',
  is_hotel: false,
  bio: 'Botanist',
  address: "Passatge d'Elisabets, 1, 08001 Barcelona",
  latitude: 41.383549,
  longitude: 2.1691637,
  password: 'password9',
  phone_number: '655-000-000'
)

user10 = User.create!(
  first_name: 'Jack',
  last_name: 'Taylor',
  hotel_name: "Mandarin Oriental",
  email: 'jack@mandarinhotel.com',
  is_hotel: true,
  bio: "Set on Barcelona’s fashionable Passeig de Gràcia, the luxurious Mandarin Oriental, Barcelona is within 5 minutes’ walk of Gaudi’s Casa Batlló and La Pedrera. Plaça Catalunya is just a 10-minute walk away. The hotel features a spa, rooftop pool, indoor pool, fitness centre, wonderful city views, and 24-hour room service",
  address: 'Passeig de Gràcia, 38 - 40, Eixample, 08007 Barcelona, Spain',
  latitude: 41.3913213,
  longitude: 2.1668109,
  password: 'password10',
  phone_number: '655-111-111',
)
user11 = User.create!(
  first_name: 'Pedro',
  last_name: 'Gonzales',
  hotel_name: "Grand Hotel Central",
  email: 'pedro@grandhotelcentral.com',
  is_hotel: true,
  bio: "Grand Central Hotel Barcelona is a design hotel offering fantastic views of the Gothic Quarter and Barcelona Cathedral from its rooftop infinity pool. It has stylish rooms and free high-speed WiFi",
  address: 'Via Laietana, 30, Ciutat Vella, 08003 Barcelona, Spain',
  latitude: 41.3850559,
  longitude: 2.177794,
  password: 'password11',
  phone_number: '655-111-111',
)
user12 = User.create!(
  first_name: 'Marcelo',
  last_name: 'Perez',
  hotel_name: "Renaissance Barcelona Hotel",
  email: 'marcelo@renaissancehotel.com',
  is_hotel: true,
  bio: "Renaissance Barcelona Hotel is located in the heart of the city, steps away from Passeig de Gràcia, main shopping boulevard, countless bars and restaurants, landmarks and cultural attractions",
  address: 'Pau Clarís, 122, Eixample, 08009 Barcelona, Spain',
  latitude: 41.3928415,
  longitude: 2.1673643,
  password: 'password12',
  phone_number: '655-111-222',
)
user13 = User.create!(
  first_name: 'Pedro',
  last_name: 'Felix',
  hotel_name: "Sir Victor Hotel",
  email: 'pedro@sirvictorhotel.com',
  is_hotel: true,
  bio: "Sir Victor Hotel, part of Sircle Collection in Barcelona offers stylish accommodation on Passeig de Gràcia, 5 minutes’ walk from Gaudí’s La Pedrera. It features a rooftop swimming pool and a terrace offering excellent views of Barcelona",
  address: 'Rosselló, 265, Eixample, 08008 Barcelona, Spain',
  latitude: 41.3962021,
  longitude: 2.1608121,
  password: 'password13',
  phone_number: '655-111-222',
)

user14 = User.create!(
  first_name: 'María',
  last_name: 'Gutierrez',
  hotel_name: "ME Barcelona",
  email: 'maria@mehotel.com',
  is_hotel: true,
  bio: "Set in Barcelona and with Somorrostro Beach reachable within 2.7 km, ME Barcelona offers concierge services, allergy-free rooms, a terrace, free WiFi and a bar. This 5-star hotel offers a tour desk and luggage storage space. The accommodation provides nightclub and room service",
  address: 'Carrer de Casp 1-13, Eixample, 08010 Barcelona, Spain',
  latitude: 41.3892184,
  longitude: 2.170063,
  password: 'password14',
  phone_number: '655-111-333'
)
user15 = User.create!(
  first_name: 'Julieta',
  last_name: 'Vir',
  hotel_name: "Alma Barcelona GL",
  email: 'julieta@almahotel.com',
  is_hotel: true,
  bio: "Alma Barcelona is set in an attractive building just off Barcelona’s Passeig de Gràcia. It offers a spa, a stylish restaurant with a terrace, and air-conditioned rooms with free Wi-Fi",
  address: 'Mallorca, 269-271, Eixample, 08008 Barcelona, Spain',
  latitude: 41.3945375,
  longitude: 2.1632263,
  password: 'password15',
  phone_number: '655-111-444'
)

user16 = User.create!(
  first_name: 'Paulo',
  last_name: 'Sanchez',
  hotel_name: "",
  email: 'p.sanchez@gmail.com',
  is_hotel: false,
  bio: "I am a digital nomad, I live in Barcelona and I love to work in co-working spaces where I can meet new people.",
  address: 'Gran Via de les Corts Catalanes, 606, 08007 Barcelona',
  latitude: 41.387140,
  longitude: 2.165790,
  password: '123456',
  phone_number: '655-111-444'
)

user17 = User.create!(
  first_name: 'Gonzalo',
  last_name: 'Garcia',
  hotel_name: "",
  email: 'g.garcia@gmail.com',
  is_hotel: false,
  bio: "I am a digital nomad, I live in Barcelona and I love to work in co-working spaces where I can meet new people.",
  address: 'Gran Via de les Corts Catalanes, 606, 08007 Barcelona',
  latitude: 41.387140,
  longitude: 2.165790,
  password: '123456',
  phone_number: '655-111-444'
)

puts "created users"

cat1 = Category.create!(
  name: "Co-Working"
)

cat2 = Category.create!(
  name: "Wellbeing"
)

sub1 = SubCategory.create!(
  name: "Swimming pool",
  category_id: cat2.id
)

sub2 = SubCategory.create!(
  name: "Fitness center",
  category_id: cat2.id
)

sub3 = SubCategory.create!(
  name: "Massage",
  category_id: cat2.id
)

sub4 = SubCategory.create!(
  name: "Sauna",
  category_id: cat2.id
)

sub5 = SubCategory.create!(
  name: "Lively and animated",
  category_id: cat1.id
)

sub6 = SubCategory.create!(
  name: "Spaces to focus",
  category_id: cat1.id
)

sub7 = SubCategory.create!(
  name: "Workplaces for foodies",
  category_id: cat1.id
)


photo1 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/489411470.jpg?k=f5575167317f2feff595ee5b4e2f5836bff735805dd47b5589a6bf11999f6729&o=&hp=1")
photo2 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/43419709.jpg?k=c019ed264ac13968681dc360f37c1ef91ac8729f53274d8e79e00243c9ee1fbf&o=&hp=1")
service1 = Service.new(
  description: "Dive into luxury at our hotel's swimming pool, a serene oasis nestled amidst lush surroundings. Whether you're seeking a refreshing morning swim or a relaxing afternoon soak, our crystal-clear waters and modern amenities provide the perfect escape.",
  price: 15,
  duration_minutes: 180,
  user_id: user4.id,
  sub_category_id: sub1.id
)
service1.photos.attach(io: photo1, filename: service1.sub_category.name)
service1.photos.attach(io: photo2, filename: service1.sub_category.name)
service1.save

photo3 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/75439878.jpg?k=39d1fbb7a648753e3b2b4259f5c8dbf8585be3c213e203907f7189134c037a0e&o=&hp=1")
photo4 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/405461014.jpg?k=f4198d584e9e43e9e45749dcc75cc780d34c687b28b7c92fb8708eadfd3494f0&o=&hp=1")
photo5 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/405461007.jpg?k=d7c6eedd122cc8469791351929d543be1a5d6222531e6e4964ef0bd8585f976e&o=&hp=1")
photo6 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/75332408.jpg?k=f5c4dbbbceb0c49f435d8bfc47c9d3a4e9487633619204a469bca98617539da0&o=&hp=1")
service2 = Service.new(
  description: "Immerse yourself in tranquility at our hotel's swimming pool, where the gentle ripple of water meets the soothing ambiance of our carefully curated poolside. Surrounded by elegant landscaping, it's the ideal spot to unwind, bask in the sun, or simply enjoy a leisurely swim.",
  price: 10,
  duration_minutes: 180,
  user_id: user11.id,
  sub_category_id: sub1.id
)
service2.photos.attach(io: photo3, filename: service2.sub_category.name)
service2.photos.attach(io: photo4, filename: service2.sub_category.name)
service2.photos.attach(io: photo5, filename: service2.sub_category.name)
service2.photos.attach(io: photo6, filename: service2.sub_category.name)
service2.save

photo7 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/334168813.jpg?k=ba4d82a10e2b92ae618844bc44d770ed566a8f4f2667c96f1999e25300002b96&o=&hp=1")
photo8 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/334168808.jpg?k=36190bd190965d0bc372ce339ec102443aa12773f51abae60eaf899ccee3809f&o=&hp=1")
service3 = Service.new(
  description: "Experience sophistication by our hotel's contemporary swimming pool. Adorned with sleek design elements and complemented by the latest amenities, our pool invites you to indulge in a stylish escape. Whether you prefer lounging in the sun or taking a dip, this poolside retreat promises a touch of modern luxury.",
  price: 17,
  duration_minutes: 180,
  user_id: user14.id,
  sub_category_id: sub1.id
)
service3.photos.attach(io: photo7, filename: service3.sub_category.name)
service3.photos.attach(io: photo8, filename: service3.sub_category.name)
service3.save

photo9 = URI.open("https://images.unsplash.com/photo-1540496905036-5937c10647cc?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
service4 = Service.new(
  description: "Unleash your vitality at our hotel's fitness center—a compact powerhouse for your active lifestyle. State-of-the-art equipment awaits, providing a quick, invigorating workout to keep you energized during your stay.",
  price: 12,
  duration_minutes: 120,
  user_id: user2.id,
  sub_category_id: sub2.id
)
service4.photos.attach(io: photo9, filename: service4.sub_category.name)
service4.save

photo10 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/234186627.jpg?k=7c38e664ce1e68164d7c071e57157263a915024744beb6473f5917a0a88f1ce9&o=&hp=1")
service5 = Service.new(
  description: "Elevate your fitness routine in our hotel's sleek fitness center. Thoughtfully designed with the latest gear, it's a stylish space to stay active. Convenient and efficient, ensuring you stay on track with your wellness goals.",
  price: 15,
  duration_minutes: 120,
  user_id: user6.id,
  sub_category_id: sub2.id
)
service5.photos.attach(io: photo10, filename: service5.sub_category.name)
service5.save

photo11 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/3a/96/95/sala-fitness.jpg?w=1400&h=-1&s=1")
service6 = Service.new(
  description: "Our hotel's fitness center is your 24/7 fitness companion. Compact yet comprehensive, it offers a convenient space to break a sweat whenever your schedule allows. Your well-being, your way.",
  price: 15,
  duration_minutes: 120,
  user_id: user8.id,
  sub_category_id: sub2.id
)
service6.photos.attach(io: photo11, filename: service6.sub_category.name)
service6.save

photo12 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/322568749.jpg?k=2de580b73fd5a95dc9d33f74518f2d246fcaab1bb5d4d9758d732bdb961da0cf&o=&hp=1")
photo13 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/322568776.jpg?k=87a3d4e374754578727fcaf88ec0967981d7705675d6093c7a1e5d89873f2d90&o=&hp=1")
service7 = Service.new(
  description: "Discover a fitness haven at our hotel's gym—compact, yet complete. Whether you're a morning warrior or a late-night enthusiast, our fitness center welcomes you with modern equipment and a commitment to your well-being.",
  price: 14,
  duration_minutes: 120,
  user_id: user14.id,
  sub_category_id: sub2.id
)
service7.photos.attach(io: photo12, filename: service7.sub_category.name)
service7.photos.attach(io: photo13, filename: service7.sub_category.name)
service7.save

photo14 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/105848327.jpg?k=16a8d4811a86361bfc71c626bfb3c53d234d97fde15753452ab37a361a676555&o=&hp=1")
photo15 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/105849363.jpg?k=eb4aa7136fa68c6637ad5bb8ea6e6311d3fc0f1edf84147eed9c34fd8a021fe0&o=&hp=1")
service8 = Service.new(
  description: "Indulge in blissful relaxation with our hotel's massage service. Let skilled hands melt away tension, transporting you to a state of tranquility. A therapeutic escape within reach.",
  price: 100,
  duration_minutes: 60,
  user_id: user2.id,
  sub_category_id: sub3.id
)
service8.photos.attach(io: photo14, filename: service8.sub_category.name)
service8.photos.attach(io: photo15, filename: service8.sub_category.name)
service8.save

photo16 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/9c/9f/72/the-peninsula-paris.jpg?w=1400&h=-1&s=1")
service9 = Service.new(
  description: "Elevate your stay with our massage service, a serene escape designed to unwind both body and mind. Immerse yourself in a world of gentle touches, ensuring your stay is a rejuvenating experience.",
  price: 120,
  duration_minutes: 60,
  user_id: user10.id,
  sub_category_id: sub3.id
)
service9.photos.attach(io: photo16, filename: service9.sub_category.name)
service9.save

photo17 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/16/a3/35/aire-ancient-baths-barcelona.jpg?w=1400&h=-1&s=1")
service10 = Service.new(
  description: "Recharge with our on-demand massage service, bringing the spa experience to your room. Expert therapists deliver personalized relaxation, leaving you refreshed and ready to make the most of your stay.",
  price: 115,
  duration_minutes: 60,
  user_id: user13.id,
  sub_category_id: sub3.id
)
service10.photos.attach(io: photo17, filename: service10.sub_category.name)
service10.save

photo18 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/111813612.jpg?k=da1beb3b2af1e28d519e1837065257c5e3be4f088b4890d083dc48ed8bac9952&o=&hp=1")
service11 = Service.new(
  description: "Transform your stay into a rejuvenating journey with our hotel's massage service. Tailored to your preferences, it's the perfect way to unwind after a day of exploration. Your well-being, our priority.",
  price: 90,
  duration_minutes: 60,
  user_id: user11.id,
  sub_category_id: sub3.id
)
service11.photos.attach(io: photo18, filename: service11.sub_category.name)
service11.save

photo19 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/ac/a0/de/sauna-finlandais.jpg?w=2400&h=-1&s=1")
service12 = Service.new(
  description: "Step into a world of calming heat, promoting relaxation and wellness. A brief retreat that leaves you refreshed and ready for whatever the day holds.",
  price: 25,
  duration_minutes: 60,
  user_id: user14.id,
  sub_category_id: sub4.id
)
service12.photos.attach(io: photo19, filename: service12.sub_category.name)
service12.save

photo20 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/30/5a/c6/spa-reylof.jpg?w=1400&h=-1&s=1")
service13 = Service.new(
  description: "Experience pure relaxation in our hotel's sauna—a haven of warmth and tranquility. Indulge in the soothing embrace of steam, leaving stress behind for a rejuvenating escape.",
  price: 30,
  duration_minutes: 60,
  user_id: user15.id,
  sub_category_id: sub4.id
)
service13.photos.attach(io: photo20, filename: service13.sub_category.name)
service13.save

photo21 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/213636209.jpg?k=6ba83546778494b03749f1fc97d2619bd1143093a0380f3b2e82aacd249fc718&o=&hp=1")
photo22 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/204515187.jpg?k=e54754778c61768f0ea96e1b0b7e27810930c57809abdd585f82c2b21ae99dfe&o=&hp=1")
photo23 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/213636166.jpg?k=154bfc39c5e3398c23bc7605ea9c5d3f23d1c65828430095c81a580f1b0bcca0&o=&hp=1")
photo24 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/213636221.jpg?k=3d8147b25f9d64e7b7c7bc6e1c2bba98bf17aa5955885f5dff07e67fa190c168&o=&hp=1")
service14 = Service.new(
  description: "Immerse yourself in the vibrant energy of our hotel's co-working space, where creativity knows no bounds. With dynamic collaboration zones, colorful furnishings, and a constant hum of activity, it's the perfect setting for those who thrive in lively and animated work environments.",
  price: 10,
  duration_minutes: 180,
  user_id: user13.id,
  sub_category_id: sub5.id
)
service14.photos.attach(io: photo21, filename: service14.sub_category.name)
service14.photos.attach(io: photo22, filename: service14.sub_category.name)
service14.photos.attach(io: photo23, filename: service14.sub_category.name)
service14.photos.attach(io: photo24, filename: service14.sub_category.name)
service14.save

photo25 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/42/d5/59/margot-house.jpg?w=1400&h=-1&s=1")
photo26 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/09/11/65/lobby-v18391048.jpg?w=2400&h=-1&s=1")
photo27 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/42/d5/60/margot-house.jpg?w=1400&h=-1&s=1")
photo28 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/78/bd/86/the-attik-seventy-barcelona.jpg?w=1400&h=-1&s=1")
service15 = Service.new(
  description: "Step into our hotel's co-working playground, where work meets play in a lively symphony. Dynamic workstations, interactive breakout areas, and a calendar full of networking events create an animated atmosphere that inspires productivity and fosters connections.",
  price: 10,
  duration_minutes: 180,
  user_id: user10.id,
  sub_category_id: sub5.id
)
service15.photos.attach(io: photo25, filename: service15.sub_category.name)
service15.photos.attach(io: photo26, filename: service15.sub_category.name)
service15.photos.attach(io: photo27, filename: service15.sub_category.name)
service15.photos.attach(io: photo28, filename: service15.sub_category.name)
service15.save

photo29 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/09/9a/1d/yust-antwerpen.jpg?w=1400&h=-1&s=1")
photo30 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/09/9b/0e/yust-antwerpen.jpg?w=1400&h=-1&s=1")
photo31 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/09/98/6a/yust-antwerpen.jpg?w=1400&h=-1&s=1")
service16 = Service.new(
  description: "Join the workspace fiesta at our hotel's co-working spot! Bursting with lively colors, collaborative corners, and an ever-present buzz of conversation, it's a dynamic environment that transforms work into a celebration. Get ready to be inspired and energized.",
  price: 12,
  duration_minutes: 180,
  user_id: user4.id,
  sub_category_id: sub5.id
)
service16.photos.attach(io: photo29, filename: service16.sub_category.name)
service16.photos.attach(io: photo30, filename: service16.sub_category.name)
service16.photos.attach(io: photo31, filename: service16.sub_category.name)
service16.save

photo32 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/4e/d5/b0/a-stay.jpg?w=1100&h=-1&s=1")
photo33 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/4e/d5/70/a-stay.jpg?w=1400&h=-1&s=1")
service17 = Service.new(
  description: "Our co-working space is not just a place to work; it's a carnival of ideas! With lively discussions, spontaneous collaborations, and a backdrop of vibrant decor, this is where innovation thrives. Experience a dynamic work atmosphere that sparks creativity at every turn.",
  price: 15,
  duration_minutes: 180,
  user_id: user14.id,
  sub_category_id: sub5.id
)
service17.photos.attach(io: photo32, filename: service17.sub_category.name)
service17.photos.attach(io: photo33, filename: service17.sub_category.name)
service17.save

photo34 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/c6/0f/56/table-de-coworking.jpg?w=800&h=-1&s=1")
photo35 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/f4/50/96/business-corner.jpg?w=2400&h=-1&s=1")
service18 = Service.new(
  description: "Elevate your work experience at our hotel's exclusive co-working space designed for focus and productivity. Quiet corners, ergonomic seating, and high-speed connectivity create a refined atmosphere for executives and business professionals to concentrate on their tasks.",
  price: 14,
  duration_minutes: 180,
  user_id: user10.id,
  sub_category_id: sub6.id
)
service18.photos.attach(io: photo34, filename: service18.sub_category.name)
service18.photos.attach(io: photo35, filename: service18.sub_category.name)
service18.save

photo36 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/35/82/c9/pillows-grand-hotel-reylof.jpg?w=1100&h=-1&s=1")
photo37 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/35/7d/bc/pillows-grand-hotel-reylof.jpg?w=1400&h=-1&s=1")
service19 = Service.new(
  description: "Escape the noise and distractions in our hotel's dedicated co-working sanctuary. With a focus on tranquility and efficiency, this space offers private workstations, soundproofing, and minimalist design, providing an ideal setting for focused, uninterrupted work.",
  price: 12,
  duration_minutes: 180,
  user_id: user2.id,
  sub_category_id: sub6.id
)
service19.photos.attach(io: photo36, filename: service19.sub_category.name)
service19.photos.attach(io: photo37, filename: service19.sub_category.name)
service19.save

photo38 = URI.open("https://images.unsplash.com/photo-1590381105924-c72589b9ef3f?q=80&w=2671&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
service20 = Service.new(
  description: "Unleash your productivity in our hotel's co-working area, tailored for tech-savvy individuals. Equipped with the latest technology, high-speed internet, and ergonomic workstations, it's the perfect environment for focused work, coding, and virtual collaborations.",
  price: 16,
  duration_minutes: 180,
  user_id: user12.id,
  sub_category_id: sub6.id
)
service20.photos.attach(io: photo38, filename: service20.sub_category.name)
service20.save

photo39 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/51/36/b5/bar.jpg?w=1400&h=-1&s=1")
photo40 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/51/36/a9/restaurant.jpg?w=1100&h=-1&s=1")
service21 = Service.new(
  description: "Experience a blend of productivity and pleasure at our hotel's co-working space, where the aroma of freshly brewed coffee mingles with the hum of focused work. Enjoy restaurant-quality meals and craft beverages right at your workspace, turning every break into a culinary delight.",
  price: 8,
  duration_minutes: 180,
  user_id: user8.id,
  sub_category_id: sub7.id
)
service21.photos.attach(io: photo39, filename: service21.sub_category.name)
service21.photos.attach(io: photo40, filename: service21.sub_category.name)
service21.save

photo41 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/3b/d5/13/lobby-bar.jpg?w=1400&h=-1&s=1")
photo42 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/6c/74/06/the-hoxton-poblenou.jpg?w=1400&h=-1&s=1")
photo43 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/92/1d/32/fourcorners-slice-shop.jpg?w=1100&h=-1&s=1")
service22 = Service.new(
  description: "Fuel your creativity at our hotel's co-working spot, where the bar is as much a part of the workspace as the desks. Enjoy a vibrant atmosphere, craft beverages, and delectable bites while collaborating with like-minded professionals.",
  price: 10,
  duration_minutes: 180,
  user_id: user4.id,
  sub_category_id: sub7.id
)
service22.photos.attach(io: photo41, filename: service22.sub_category.name)
service22.photos.attach(io: photo42, filename: service22.sub_category.name)
service22.photos.attach(io: photo43, filename: service22.sub_category.name)
service22.save

puts "created services"

(0..6).each do |day_interval|
  day = Date.today + day_interval.days
  (0..2).each do |timeslot_number|
    start = day.to_datetime + 9.hours + timeslot_number * 180.minutes
    Timeslot.create!(service: service1, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service2, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service3, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service14, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service15, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service16, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service17, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service18, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service19, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service20, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service21, start_at: start, end_at: start + 180.minutes)
    Timeslot.create!(service: service22, start_at: start, end_at: start + 180.minutes)
  end
end

(0..6).each do |day_interval|
  day = Date.today + day_interval.days
  (0..5).each do |timeslot_number|
    start = day.to_datetime + 8.hours + timeslot_number * 120.minutes
    Timeslot.create!(service: service4, start_at: start, end_at: start + 120.minutes)
    Timeslot.create!(service: service5, start_at: start, end_at: start + 120.minutes)
    Timeslot.create!(service: service6, start_at: start, end_at: start + 120.minutes)
    Timeslot.create!(service: service7, start_at: start, end_at: start + 120.minutes)
  end
end

(0..6).each do |day_interval|
  day = Date.today + day_interval.days
  (0..10).each do |timeslot_number|
    start = day.to_datetime + 9.hours + timeslot_number * 60.minutes
    Timeslot.create!(service: service8, start_at: start, end_at: start + 60.minutes)
    Timeslot.create!(service: service9, start_at: start, end_at: start + 60.minutes)
    Timeslot.create!(service: service10, start_at: start, end_at: start + 60.minutes)
    Timeslot.create!(service: service11, start_at: start, end_at: start + 60.minutes)
    Timeslot.create!(service: service12, start_at: start, end_at: start + 60.minutes)
    Timeslot.create!(service: service13, start_at: start, end_at: start + 60.minutes)
  end
end

day = 10
day_2 = 10

10.times do
  Booking.create!(
  occurs_on: DateTime.new(2023, 11, day, 18, 30, 0),
  user_id: user1.id,
  timeslot: Timeslot.all.sample,
  status: "Confirmed"
)
  day += 1
end

10.times do
  Booking.create!(
  occurs_on: DateTime.new(2023, 12, day_2, 18, 30, 0),
  user_id: user1.id,
  timeslot: Timeslot.all.sample,
  status: "Confirmed"
)
  day_2 += 1
end

day_3 = 10
3.times do
  Booking.create!(
  occurs_on: DateTime.new(2023, 11, day, 18, 30, 0),
  user_id: user3.id,
  timeslot: Timeslot.where(service: service1).sample, #for service1
  status: "Confirmed"
)
  day += 1
end

day_4 = 10
3.times do
  Booking.create!(
  occurs_on: DateTime.new(2023, 11, day, 18, 30, 0),
  user_id: user3.id,
  timeslot: Timeslot.where(service: service6).sample, #for service6
  status: "Confirmed"
)
  day += 1
end



day_5 = 10
3.times do
  Booking.create!(
  occurs_on: DateTime.new(2023, 11, day, 18, 30, 0),
  user_id: user3.id,
  timeslot: Timeslot.where(service: service16).sample, #for service16
  status: "Confirmed"
)
  day += 1
end




# Swimming pool for user4 and
review1 = Review.create!(
  comment: "Totally clean, huge and perfect temperature.",
  rating: "4",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service1)).first.id
)

review2 = Review.create!(
  comment: "Very good pool in the city",
  rating: "3",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service1)).first.id
)

review3 = Review.create!(
  comment: "One of the best swimming pools I have visited",
  rating: "5",
  answer: "",
  booking_id:user3.bookings.where(timeslot:Timeslot.where(service: service1)).first.id
)

# Fitness Center for user8
review4 = Review.create!(
  comment: "High end equipment",
  rating: "4",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service6)).first.id
)

review5 = Review.create!(
  comment: "Neat space, professional people, value for money. Highly recommended.",
  rating: "5",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service6)).first.id
)

# Co-working space for user4
review6 = Review.create!(
  comment: "Been working here for a couple of times, love the space.",
  rating: "4",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service16)).first.id
)

review7 = Review.create!(
  comment: "Great coworking space in the heart of Barcelona!",
  rating: "3",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service16)).first.id
)

review8 = Review.create!(
  comment: "Very friendly coworking space with a pool on the rooftop. I like it ",
  rating: "4",
  answer: "",
  booking_id: user3.bookings.where(timeslot:Timeslot.where(service: service16)).first.id
)

puts "created reviews"

