class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :user
  # has_many :reviews, dependent: :destroy
  has_one :service, through: :timeslot
  has_one :review, dependent: :destroy

  STATUS = ["Confirmed", "Completed", "Cancelled", "Pending", "On-going"].freeze
  DURATION = [60, 90, 120, 180, 240, 480].freeze

  def chatroom
    Chatroom.find_by(service: service, user: user)
  end
end
