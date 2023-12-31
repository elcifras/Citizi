class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    service = Service.find(params[:service_id])
    @favourite.service = service
    @favourite.user = current_user
    if @favourite.save
      respond_to do |format|
        format.json { render json: { inserted: render_to_string(partial: "services/service", formats: :html, locals: { service: service }) } }
      end
    end
  end

  def destroy
    @favourite = current_user.favourites.find(params[:id])
    service = @favourite.service
    @favourite&.destroy
    respond_to do |format|
      format.json { render json: { inserted: render_to_string(partial: "services/service", formats: :html, locals: { service: service }) } }
    end
  end
end
