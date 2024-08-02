# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  nickname   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_nickname  (nickname) UNIQUE
#
class User < ApplicationRecord
  has_many :chat_messages, dependent: :destroy
  has_many :chat_room_members, dependent: :destroy
  has_many :chat_rooms, through: :chat_room_members

  # あくまでチャットアプリのサンプルなのでログイン機構は省略
  validates :nickname, presence: true, uniqueness: true
end
