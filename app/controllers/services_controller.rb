# app/controllers/services_controller.rb
class ServicesController < ApplicationController
  def index
    @services = Service.all

    case params[:sort_by]
    when 'price'
      @services = @services.order(price: params[:sort_direction] || :asc)
    when 'distance'
      @services = @services.joins(user: :address).order(Arel.sql("ST_Distance(users.latitude, users.longitude, ?, ?) #{params[:sort_direction] || 'asc'}"), params[:latitude], params[:longitude])
    when 'rating'
      @services = @services.joins(:reviews).order("reviews.rating #{params[:sort_direction] || 'desc'}")
    end

    if params[:query].present?
      @services = @services.global_search(params[:query])
    end

    if params[:address].present?
      @near_users_ids = User.is_hotel.near(params[:address], 5, order: "").ids
      @services = @services.where(user_id: @near_users_ids)
    end

    @markers = @services.map do |service|
      {
        lat: service.user.latitude,
        lng: service.user.longitude
      }
    end
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @timeslots = @service.timeslots.where("DATE(start_at) = ?", Date.current)
  end
end
