Rails.application.routes.draw do
  get 'static_pages/home'

  get 'user', to: 'user#index'
  get 'user/signup', to:'user#new'
  get 'user/:id', to: 'user#show'

  get 'user_skill/plus', to: 'user_skill#plus'

  get 'skill', to: 'skill#index'
  post 'skill', to: 'skill#create'
  get 'skill/:id', to: 'skill#show'
end
