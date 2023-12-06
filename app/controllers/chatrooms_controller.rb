class ChatroomsController < ApplicationController
  def index
    if current_user.is_hotel
      chatrooms = current_user.chatrooms_as_hotel
    else
      chatrooms = current_user.chatrooms
    end

    chats = chatrooms.joins(:messages)
                      .select("chatrooms.*, MAX(messages.created_at) as last_messages_time")
                      .group("chatrooms.id")
                      .order("last_messages_time DESC")
    @ordered_chats = chats
    @empty_chats = chatrooms.select{ |chat| chat.messages.empty? }
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
