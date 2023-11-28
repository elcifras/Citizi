Review.destroy_all
Booking.destroy_all
Service.destroy_all
User.destroy_all
Category.destroy_all
SubCategory.destroy_all

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
  email: 'alice@example.com',
  is_hotel: false,
  bio: 'Fitness enthusiast',
  address: '456 Fitness Ave',
  password: 'password1',
  phone_number: '555-222-2222',
)

user2 = User.create!(
  first_name: 'Bob',
  last_name: 'Smith',
  email: 'bob@example.com',
  is_hotel: true,
  bio: 'Hotel owner',
  address: '789 Hotel St',
  password: 'password2',
  phone_number: '555-333-3333',
)

user3 =User.create!(
  first_name: 'Charlie',
  last_name: 'Brown',
  email: 'charlie@example.com',
  is_hotel: false,
  bio: 'Artist',
  address: '123 Art Street',
  password: 'password3',
  phone_number: '555-444-4444',
)

user4 = User.create!(
  first_name: 'Diana',
  last_name: 'Johnson',
  email: 'diana@example.com',
  is_hotel: true,
  bio: 'Hotel Travel Blogger',
  address: '456 Travel Lane',
  password: 'password4',
  phone_number: '555-555-5555',
)
user5 = User.create!(
  first_name: 'Eva',
  last_name: 'Williams',
  email: 'eva@example.com',
  is_hotel: false,
  bio: 'Chef',
  address: '789 Cooking Lane',
  password: 'password5',
  phone_number: '555-666-6666',
)

user6 = User.create!(
  first_name: 'Frank',
  last_name: 'Miller',
  email: 'frank@example.com',
  is_hotel: true,
  bio: 'Hotel Marriot',
  address: '123 Business Street',
  password: 'password6',
  phone_number: '555-777-7777',
)

user7 = User.create!(
  first_name: 'Grace',
  last_name: 'Smith',
  email: 'grace@example.com',
  is_hotel: false,
  bio: 'Yoga Instructor',
  address: '456 Zen Avenue',
  password: 'password7',
  phone_number: '555-888-8888',
)

user8 = User.create!(
  first_name: 'Harry',
  last_name: 'Johnson',
  email: 'harry@example.com',
  is_hotel: true,
  bio: 'Hotel Adventure Seeker',
  address: '789 Explorer Lane',
  password: 'password8',
  phone_number: '555-999-9999',
)

user9 = User.create!(
  first_name: 'Ivy',
  last_name: 'Martin',
  email: 'ivy@example.com',
  is_hotel: false,
  bio: 'Botanist',
  address: '123 Green Street',
  password: 'password9',
  phone_number: '555-000-0000',
)

user10 = User.create!(
  first_name: 'Jack',
  last_name: 'Taylor',
  email: 'jack@example.com',
  is_hotel: true,
  bio: 'Plaza Catalunya',
  address: '456 Silicon Lane',
  password: 'password10',
  phone_number: '555-111-1111',
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