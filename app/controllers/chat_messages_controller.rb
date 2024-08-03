class ChatMessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @chat_room = current_user.chat_rooms.find(params[:chat_room_id])
    @chat_message = @chat_room.chat_messages.build(chat_message_params)
    @chat_message.user = current_user

    if @chat_message.save
      render "chat_rooms/create_chat_message_success"
    else
      @chat_messages = @chat_room.chat_messages
      render "chat_rooms/create_chat_message_failure", status: :unprocessable_entity
    end
  end

  private

    def chat_message_params
      params.require(:chat_message).permit(:message)
    end
end
