class ChatRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chat_rooms = current_user.chat_rooms
  end

  def show
    @chat_room = current_user.chat_rooms.find(params[:id])
    @chat_messages = @chat_room.chat_messages
  end
end
