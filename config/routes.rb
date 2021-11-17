Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "pets/:id/bookings/new", to: "booking#new"
  post "bookings", to: "booking#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pets", to: "pets#index"
  get 'pets/:id', to: 'pets#show', as: 'pet'

  get "/users/:id", to: "users#show", as: 'user'
end
