class ChatroomsController < ApplicationController
  def index
    @chatroom = Chatroom.where(user: current_user)
  end

  def create
    @service = Service.find(params[:service_id])

    unless current_user.is_hotel
      @chatroom = Chatroom.find_or_create_by(user: current_user, service: @service)
    end

    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @service = @chatroom.service
    @message = Message.new
  end

  private
  
  def is_hotel?
    current_user.is_hotel
  end
  
end
