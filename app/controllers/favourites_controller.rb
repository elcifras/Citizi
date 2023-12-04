class FavouritesController < ApplicationController
  def create
    raise
    @favourite = Favourite.new
    service = Service.find(params[:service_id])
    @favourite.service = service
    @favourite.user = current_user
    if @favourite.save
      respond_to do |format|
        format.json { json.inserted{render(partial: "services/service", formats: :html, locals: { service: service } ) }}
    end
  end

  def destroy
    @favourite = current_user.favourites.find(params[:id])
    @favourite.destroy
    redirect_to @favourite.favourited
  end
end
