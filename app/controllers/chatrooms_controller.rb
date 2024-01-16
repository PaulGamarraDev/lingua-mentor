class ChatroomsController < ApplicationController
  def index
    @users = User.all_except(current_user)

    @chatrooms = Chatroom.involving(current_user).order("updated_at ASC")
    #@chatroom = Chatroom.find(params[:id])

    #@message = Message.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
