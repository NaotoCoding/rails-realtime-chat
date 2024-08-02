Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "chat_rooms#index"
  resources :chat_rooms, only: [:index, :show]

  get "users/sign_in" => "sessions#new"
  post "users/sign_in" => "sessions#create"
end
