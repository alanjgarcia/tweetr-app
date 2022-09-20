Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # resources :tweets

  # Automatically generates the following routes
  # get "/tweets" => "tweets#index", as: "tweets"
  # get "/tweets/new" => "tweets#new", as: "new_tweet"
  # post "/tweets" => "tweets#create"
  # get "/tweets/:id" => "tweets#show", as: "tweet"
  # get "/tweets/:id/edit" => "tweets#edit", as: "edit_tweet"
  # patch "/tweets/:id" => "tweets#update"
  # delete "/tweets/:id" => "tweets#destroy"

  # get "/relationship" => "relationship#index"
  # post "/relationships" => "relationships#create"
  resources :relationships
  # jbhhyb
end
