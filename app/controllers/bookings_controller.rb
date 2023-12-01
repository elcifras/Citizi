class BookingsController < ApplicationController
  before_action :set_service, only: %i[create]
  before_action :authenticate_user!, only: %i[create index]

  def index
    # if current_user.is_hotel
    #   @bookings = current_user.accepted_bookings
    # else
    #   @bookings = current_user.bookings
    #   @markers = @bookings.geocoded.map do |booking|
    #     {
    #       lat: booking.latitude,
    #       lng: booking.longitude
    #     }
    #   end
    # end
    @active_bookings = current_user.bookings.where(status: "Confirmed").select{ |booking| booking.occurs_on > DateTime.yesterday}
    @past_bookings = current_user.bookings.select{ |booking| booking.occurs_on < DateTime.now }
    @cancelled_bookings = current_user.bookings.where(status: "Cancelled")
  end

  def create
    unless current_user.is_hotel
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      @booking.timeslot = Timeslot.find(params[:timeslot_id]) # missing the front end to b able to select a tiemslot
      @booking.status = "Confirmed"
      if @booking.save
        redirect_to bookings_path, notice: "Booking created"
      else
        redirect_to service_path(@service), notice: "Problem to book"
      end
    else
      redirect_to bookings_path, notice: "You can not book"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    #if @booking.destroy
    #  redirect_to bookings_path, notice: "Booking deleted"
    #else
    #  redirect_to bookings_path, status: :unprocessable_entity, notice: "Booking not deleted"
    #end
    @booking.update(status: "Cancelled")
    redirect_to bookings_path
  end

  private

  def set_service
    @service = service.find(params[:service_id])
  end

  def booking_params
    params.require(:booking).permit(:occurs_on, :timeslot_id, :status, :service_id)
  end

  def is_hotel?
    current_user.is_hotel
  end
end
