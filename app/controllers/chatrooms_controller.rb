class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @users = User.all_except(current_user)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end
end
