class ChatRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chat_rooms = current_user.chat_rooms
  end
end
