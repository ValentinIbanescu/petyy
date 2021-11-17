Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "pets/:id/bookings/new", to: "bookings#new"
  post "pets/:id/bookings", to: "bookings#create"
  resources :pets, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pets", to: "pets#index"
  # As a user, I can add a new pet
  get '/pets/new', to: 'pets#new', as: 'new_pet' # display the form
  post '/pets/', to: 'pets#create'
  get '/pets/:id', to: 'pets#show', as: 'pet'
  # get "/pets", to: "pets#index"
  # get 'pets/:id', to: 'pets#show', as: 'pet'
  get "/users/:id", to: "users#show", as: 'user'
end
