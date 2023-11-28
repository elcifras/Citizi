class Timeslot < ApplicationRecord
  belongs_to :service
  has_one :booking
end
