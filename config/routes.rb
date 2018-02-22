Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  get '/boards' => 'boards#index'
  
  post "/users" => 'users#create'
  patch "/users/:id" => 'users#update'

  
end
