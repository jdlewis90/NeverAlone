Rails.application.routes.draw do
  root 'user#index'

  get 'user/signup'

  get 'user/login'

  get 'user/profile'

  get 'user/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
