Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "users/sign_in" => "sessions#new"
  post "users/sign_in" => "sessions#create"

  root to: "chat_rooms#index"
  resources :chat_rooms, only: [:index, :show] do
    resources :chat_messages, only: [:create]
  end
end
