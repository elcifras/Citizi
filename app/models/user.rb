class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :timeslots, through: :services
  has_many :accepted_bookings, through: :timeslots, source: :booking
  has_many :reviews, through: :bookings
end
