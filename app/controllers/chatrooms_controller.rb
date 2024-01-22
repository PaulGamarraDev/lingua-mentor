class ChatroomsController < ApplicationController
  def index
    @users = User.all_except(current_user)

    @chatrooms = Chatroom.involving(current_user)
      .joins(:messages)
      .select("chatrooms.*, MAX(messages.created_at) as last_message_created_at")
      .group("chatrooms.id")
      .order("last_message_created_at DESC")

    # @chatroom = Chatroom.find(params[:id])
    # @message = Message.new

  end

  def create
    if Chatroom.between(params[:sender_id],params[:recipient_id]).present?
      @chatroom = Chatroom.between(params[:sender_id],params[:recipient_id]).first
      redirect_to chatroom_path(@chatroom)
    else
      @chatroom = Chatroom.create(sender_id: params[:sender_id], recipient_id: params[:recipient_id]) #método de instancia .save!
      redirect_to chatroom_path(@chatroom)
    end
  end

  def show
    
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

    @users = User.all_except(current_user)

    @chatrooms = Chatroom.involving(current_user)
      .joins(:messages)
      .select("chatrooms.*, MAX(messages.created_at) as last_message_created_at")
      .group("chatrooms.id")
      .order("last_message_created_at DESC")
  end

end
