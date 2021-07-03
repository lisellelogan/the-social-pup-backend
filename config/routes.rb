Rails.application.routes.draw do
  resources :friendships
  resources :users

  get '/current_user', to: "sessions#get_current_user"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
