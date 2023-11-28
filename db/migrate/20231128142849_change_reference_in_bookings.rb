class ChangeReferenceInBookings < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :service, index: true
    add_reference :bookings, :timeslot, foreign_key: true
  end
end
