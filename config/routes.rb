Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lessons, except: [:destroy] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :destroy]
  # added the below for search function
  # resources :lessons, only: [:index]
end
