Rails.application.routes.draw do

  root 'static_pages#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'user_skills/plus', to: 'user_skills#plus'

  get 'skills', to: 'skills#index'
  post 'skills', to: 'skills#create'
  get 'skills/:id', to: 'skills#show'
  resources :users
end
