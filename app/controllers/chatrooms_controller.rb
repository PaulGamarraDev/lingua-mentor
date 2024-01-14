class ChatroomsController < ApplicationController
  def index
    @users = User.all_except(current_user)

    @chatrooms = Chatroom.involving(current_user)
      .joins(:messages)
      .select("chatrooms.*, MAX(messages.created_at) as last_message_created_at")
      .group("chatrooms.id")
      .order("last_message_created_at DESC")
    #@chatroom = Chatroom.find(params[:id])

    #@message = Message.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
