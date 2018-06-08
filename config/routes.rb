Rails.application.routes.draw do
  root 'user#index'

  get 'signup' => 'user#signup'
  post 'signup' => 'user#signup'

  get 'login' => 'user#login', :as => 'login'
  post 'login' => 'user#login'

  get 'profile/:username' => 'user#profile', :as => 'profile'

  get 'user/settings'

  get 'logout' => 'user#logout', :as => 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
