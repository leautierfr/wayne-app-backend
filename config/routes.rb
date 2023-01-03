Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  get "/users" => "users#index"

  post "/sessions" => "sessions#create"

  get "/songs" => "songs#index"
  post "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#destroy"

  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"
end
