class ChatroomsController < ApplicationController
  def index
    @chatroom = Chatroom.where(user: current_user)
  end

  def create
    unless current_user.is_hotel
      @chatroom = Chatroom.create
    end
  end
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  private
  
  def is_hotel?
    current_user.is_hotel
  end
  
end
