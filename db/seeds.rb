User.destroy_all
Review.destroy_all
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
  phone_number: '655-222-222',
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

service1 = Service.create!(
  description: "Dive into luxury at our hotel's swimming pool, a serene oasis nestled amidst lush surroundings. Whether you're seeking a refreshing morning swim or a relaxing afternoon soak, our crystal-clear waters and modern amenities provide the perfect escape.",
  price: 15,
  duration_minutes: 180,
  user_id: user4.id,
  sub_category_id: sub1.id
)
service2 = Service.create!(
  description: "Immerse yourself in tranquility at our hotel's swimming pool, where the gentle ripple of water meets the soothing ambiance of our carefully curated poolside. Surrounded by elegant landscaping, it's the ideal spot to unwind, bask in the sun, or simply enjoy a leisurely swim.",
  price: 10,
  duration_minutes: 180,
  user_id: user11.id,
  sub_category_id: sub1.id
)

service3 = Service.create!(
  description: "Experience sophistication by our hotel's contemporary swimming pool. Adorned with sleek design elements and complemented by the latest amenities, our pool invites you to indulge in a stylish escape. Whether you prefer lounging in the sun or taking a dip, this poolside retreat promises a touch of modern luxury.",
  price: 17,
  duration_minutes: 180,
  user_id: user14.id,
  sub_category_id: sub1.id
)

service4 = Service.create!(
  description: "Unleash your vitality at our hotel's fitness center—a compact powerhouse for your active lifestyle. State-of-the-art equipment awaits, providing a quick, invigorating workout to keep you energized during your stay.",
  price: 12,
  duration_minutes: 120,
  user_id: user2.id,
  sub_category_id: sub2.id
)

service5 = Service.create!(
  description: "Elevate your fitness routine in our hotel's sleek fitness center. Thoughtfully designed with the latest gear, it's a stylish space to stay active. Convenient and efficient, ensuring you stay on track with your wellness goals.",
  price: 15,
  duration_minutes: 120,
  user_id: user6.id,
  sub_category_id: sub2.id
)

service6 = Service.create!(
  description: "Our hotel's fitness center is your 24/7 fitness companion. Compact yet comprehensive, it offers a convenient space to break a sweat whenever your schedule allows. Your well-being, your way.",
  price: 15,
  duration_minutes: 120,
  user_id: user8.id,
  sub_category_id: sub2.id
)

service7 = Service.create!(
  description: "Discover a fitness haven at our hotel's gym—compact, yet complete. Whether you're a morning warrior or a late-night enthusiast, our fitness center welcomes you with modern equipment and a commitment to your well-being.",
  price: 14,
  duration_minutes: 120,
  user_id: user14.id,
  sub_category_id: sub2.id
)

service8 = Service.create!(
  description: "Indulge in blissful relaxation with our hotel's massage service. Let skilled hands melt away tension, transporting you to a state of tranquility. A therapeutic escape within reach.",
  price: 100,
  duration_minutes: 60,
  user_id: user2.id,
  sub_category_id: sub3.id
)

service9 = Service.create!(
  description: "Elevate your stay with our massage service, a serene escape designed to unwind both body and mind. Immerse yourself in a world of gentle touches, ensuring your stay is a rejuvenating experience.",
  price: 120,
  duration_minutes: 60,
  user_id: user10.id,
  sub_category_id: sub3.id
)

service10 = Service.create!(
  description: "Recharge with our on-demand massage service, bringing the spa experience to your room. Expert therapists deliver personalized relaxation, leaving you refreshed and ready to make the most of your stay.",
  price: 115,
  duration_minutes: 60,
  user_id: user13.id,
  sub_category_id: sub3.id
)

service11 = Service.create!(
  description: "Transform your stay into a rejuvenating journey with our hotel's massage service. Tailored to your preferences, it's the perfect way to unwind after a day of exploration. Your well-being, our priority.",
  price: 90,
  duration_minutes: 60,
  user_id: user11.id,
  sub_category_id: sub3.id
)

service12 = Service.create!(
  description: "Step into a world of calming heat, promoting relaxation and wellness. A brief retreat that leaves you refreshed and ready for whatever the day holds.",
  price: 25,
  duration_minutes: 60,
  user_id: user14.id,
  sub_category_id: sub4.id
)

service13 = Service.create!(
  description: "Experience pure relaxation in our hotel's sauna—a haven of warmth and tranquility. Indulge in the soothing embrace of steam, leaving stress behind for a rejuvenating escape.",
  price: 30,
  duration_minutes: 60,
  user_id: user15.id,
  sub_category_id: sub4.id
)

service14 = Service.create!(
  description: "Immerse yourself in the vibrant energy of our hotel's co-working space, where creativity knows no bounds. With dynamic collaboration zones, colorful furnishings, and a constant hum of activity, it's the perfect setting for those who thrive in lively and animated work environments.",
  price: 10,
  duration_minutes: 180,
  user_id: user13.id,
  sub_category_id: sub5.id
)

service15 = Service.create!(
  description: "Step into our hotel's co-working playground, where work meets play in a lively symphony. Dynamic workstations, interactive breakout areas, and a calendar full of networking events create an animated atmosphere that inspires productivity and fosters connections.",
  price: 10,
  duration_minutes: 180,
  user_id: user10.id,
  sub_category_id: sub5.id
)

service16 = Service.create!(
  description: "Join the workspace fiesta at our hotel's co-working spot! Bursting with lively colors, collaborative corners, and an ever-present buzz of conversation, it's a dynamic environment that transforms work into a celebration. Get ready to be inspired and energized.",
  price: 12,
  duration_minutes: 180,
  user_id: user4.id,
  sub_category_id: sub5.id
)

service17 = Service.create!(
  description: "Our co-working space is not just a place to work; it's a carnival of ideas! With lively discussions, spontaneous collaborations, and a backdrop of vibrant decor, this is where innovation thrives. Experience a dynamic work atmosphere that sparks creativity at every turn.",
  price: 15,
  duration_minutes: 180,
  user_id: user14.id,
  sub_category_id: sub5.id
)

service18 = Service.create!(
  description: "Elevate your work experience at our hotel's exclusive co-working space designed for focus and productivity. Quiet corners, ergonomic seating, and high-speed connectivity create a refined atmosphere for executives and business professionals to concentrate on their tasks.",
  price: 14,
  duration_minutes: 180,
  user_id: user10.id,
  sub_category_id: sub6.id
)

service19 = Service.create!(
  description: "Escape the noise and distractions in our hotel's dedicated co-working sanctuary. With a focus on tranquility and efficiency, this space offers private workstations, soundproofing, and minimalist design, providing an ideal setting for focused, uninterrupted work.",
  price: 12,
  duration_minutes: 180,
  user_id: user2.id,
  sub_category_id: sub6.id
)

service20 = Service.create!(
  description: "Unleash your productivity in our hotel's co-working area, tailored for tech-savvy individuals. Equipped with the latest technology, high-speed internet, and ergonomic workstations, it's the perfect environment for focused work, coding, and virtual collaborations.",
  price: 16,
  duration_minutes: 180,
  user_id: user12.id,
  sub_category_id: sub6.id
)

service21 = Service.create!(
  description: "Experience a blend of productivity and pleasure at our hotel's co-working space, where the aroma of freshly brewed coffee mingles with the hum of focused work. Enjoy restaurant-quality meals and craft beverages right at your workspace, turning every break into a culinary delight.",
  price: 8,
  duration_minutes: 180,
  user_id: user8.id,
  sub_category_id: sub7.id
)

service22 = Service.create!(
  description: "Fuel your creativity at our hotel's co-working spot, where the bar is as much a part of the workspace as the desks. Enjoy a vibrant atmosphere, craft beverages, and delectable bites while collaborating with like-minded professionals.",
  price: 10,
  duration_minutes: 180,
  user_id: user4.id,
  sub_category_id: sub7.id
)

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
