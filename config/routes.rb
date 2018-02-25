Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  get '/boards' => 'boards#index'
  post '/boards' => 'boards#create'
  get '/boards/:id' => 'boards#show'
  patch '/boards/:id' => 'boards#update'
  delete '/boards/:id' => 'boards#destroy'
  
  get '/board_words' => 'board_words#index'
  post '/board_words' => 'board_words#create'
  get '/board_words/:id' => 'board_words#show'
  patch '/board_words/:id' => 'board_words#update'
  delete '/board_words/:id' => 'board_words#destroy'
  
  get '/words' => 'words#index'
  post '/words' => 'words#create'
  get '/words/:id' => 'words#show'
  patch '/words/:id' => 'words#update'
  delete '/words/:id' => 'words#destroy'



  post "/users" => 'users#create'
  patch "/users/:id" => 'users#update'

  
end
