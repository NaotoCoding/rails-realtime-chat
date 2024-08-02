# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["First User", "Second User", "Third User"].each do |nickname|
  User.create!(nickname:)
end

chat_room = ChatRoom.create!(name: "First Chat Room")
["First User", "Second User"].each do |nickname|
  ChatRoomMember.create!(chat_room:, user: User.find_by!(nickname:))
end

chat_room = ChatRoom.create!(name: "Second Chat Room")
["First User", "Third User"].each do |nickname|
  ChatRoomMember.create!(chat_room:, user: User.find_by!(nickname:))
end
