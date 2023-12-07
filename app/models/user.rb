class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :timeslots, through: :services
  has_many :accepted_bookings, through: :timeslots, source: :booking
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  has_many :chatrooms_as_hotel, through: :services, source: :chatrooms
  has_one_attached :avatar

  has_many :messages
  has_many :chatrooms
  has_many :favourites, dependent: :destroy


  scope :is_hotel, -> { where(is_hotel: true) }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
