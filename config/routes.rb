Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[index new create]
  end
  resources :bookings, only: %i[destroy show index]
  resources :reviews, only: %i[show edit update destroy]
  # Defines the root path route ("/")
  # root "articles#index"
  get "index_filtre", to: "activities#index_filtre"
  # get "random_activity", to: "activities#random_activity"
end
