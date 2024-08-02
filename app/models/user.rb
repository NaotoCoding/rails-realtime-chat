class User < ApplicationRecord
  # あくまでチャットアプリのサンプルなのでログイン機構は省略
  validates :name, presence: true, uniqueness: true
end
