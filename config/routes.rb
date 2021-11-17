Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pets", to: "pets#index"
  get 'pets/:id', to: 'pets#show', as: 'pet'
  # As a user, I can add a new pet
  get '/pets/new', to: 'pets#new', as: :new_pet # display the form
  post '/pets/', to: 'pets#create'

  get "/users/:id", to: "users#show", as: 'user'
end
