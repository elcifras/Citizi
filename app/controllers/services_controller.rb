class ServicesController < ApplicationController
  def index
    @services = Service.all

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


  end
end
