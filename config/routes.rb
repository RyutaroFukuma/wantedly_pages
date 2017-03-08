Rails.application.routes.draw do
  get 'user_skills/plus'

  get 'skills/index'

  get 'skills/show'

  get 'skills/create'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
