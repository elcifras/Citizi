# app/controllers/services_controller.rb
class ServicesController < ApplicationController
  def index
    @services = Service.all.with_attached_photos

    case params[:sort_by]
    when 'price'
      @services = @services.order(price: params[:sort_direction] || :asc)
    when 'distance'
      @services = @services.near(current_user.address).order(distance: params[:sort_direction] || :asc)
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
        lng: service.user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {service: service})
      }
    end

  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @chatroom = current_user.chatrooms.find_by(service: @service)

    @reviews = @service.reviews
    @average_rating = @reviews.average(:rating)

    if params[:date].present?
      search_date = Date.parse(params[:date])
      @timeslots = @service.timeslots.where("DATE(start_at) = ?", search_date)
    end

    respond_to do |format|
      format.html
      format.text { render partial: "form", locals: { service: @service, booking: @booking, timeslots: @timeslots, date: search_date}, formats: [:html]}
    end
  end
end
