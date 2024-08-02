# == Schema Information
#
# Table name: chat_room_members
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  chat_room_id :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_chat_room_members_on_chat_room_id  (chat_room_id)
#  index_chat_room_members_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (chat_room_id => chat_rooms.id)
#  fk_rails_...  (user_id => users.id)
#
class ChatRoomMember < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user
end
