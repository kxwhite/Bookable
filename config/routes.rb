Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lessons, only: [:index, :show, :new, :create]


  # just putting this here so we know the code for making the lessons page only visible after login
  get 'profile', to: 'pages#profile'
end
