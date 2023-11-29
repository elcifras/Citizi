Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'bookings/index'
  get 'bookings/create'
  get 'bookings/destroy'

  devise_for :users
  root to: "pages#home"

  resources :services, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:new, :create]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
