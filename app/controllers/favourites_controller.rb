class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    service = Service.find(params[:service_id])
    @favourite.service = service
    @favourite.user = current_user
    if @favourite.save
      respond_to do |format|
        format.json { render json: { inserted: render(partial: "services/service", formats: :html, locals: { service: service }) } }
      end
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(service_id: params[:id])
    @favourite&.destroy
    redirect_to @favourite&.favourited || root_path
  end
end
