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
  address: '123 Art Street',
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
  address: '789 Cooking Lane',
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
  address: '456 Zen Avenue',
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
  password: 'password8',
  phone_number: '655-999-999',
)

user9 = User.create!(
  first_name: 'Ivy',
  last_name: 'Martin',
  hotel_name: "",
  email: 'ivy@gmail.com',
  is_hotel: false,
  bio: 'Botanist',
  address: '123 Green Street',
  password: 'password9',
  phone_number: '655-000-000',
)

user10 = User.create!(
  first_name: 'Jack',
  last_name: 'Taylor',
  hotel_name: "Mandarin Oriental",
  email: 'jack@mandarinhotel.com',
  is_hotel: true,
  bio: "Set on Barcelona’s fashionable Passeig de Gràcia, the luxurious Mandarin Oriental, Barcelona is within 5 minutes’ walk of Gaudi’s Casa Batlló and La Pedrera. Plaça Catalunya is just a 10-minute walk away. The hotel features a spa, rooftop pool, indoor pool, fitness centre, wonderful city views, and 24-hour room service",
  address: 'Passeig de Gràcia, 38 - 40, Eixample, 08007 Barcelona, Spain',
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
  password: 'password14',
  phone_number: '655-111-333',
)
user15 = User.create!(
  first_name: 'Julieta',
  last_name: 'Vir',
  hotel_name: "Alma Barcelona GL",
  email: 'julieta@almahotel.com',
  is_hotel: true,
  bio: "Alma Barcelona is set in an attractive building just off Barcelona’s Passeig de Gràcia. It offers a spa, a stylish restaurant with a terrace, and air-conditioned rooms with free Wi-Fi",
  address: 'Mallorca, 269-271, Eixample, 08008 Barcelona, Spain',
  password: 'password14',
  phone_number: '655-111-444',
)

cat1 = Category.create!(
  name: "Co-Working"
)

cat2 = Category.create!(
  name: "Wellbeing"
)
sub1 = SubCategory.create!(
  name: "Pool",
  category_id: cat2.id
)
sub2 = SubCategory.create!(
  name: "Spa",
  category_id: cat2.id
)
sub3 = SubCategory.create!(
  name: "Hot-Desk",
  category_id: cat1.id
)
sub4 = SubCategory.create!(
  name: "Outside",
  category_id: cat1.id
)

service1 = Service.create!(
  description: "Work all day in our amazing rooftop and hi-speed internet",
  price: 40,
  duration_minutes: 480,
  user_id: user10.id,
  sub_category_id: sub3.id,
)
service2 = Service.create!(
  description: "Take a relaxing day off in our Spa",
  price: 60,
  duration_minutes: 480,
  user_id: user8.id,
  sub_category_id: sub2.id
)