Rails.application.routes.draw do
  root 'user#index'

  get 'signup' => 'user#signup'
  post 'signup' => 'user#signup'

  get 'login' => 'user#login', :as => 'login'
  post 'login' => 'user#login'

  get 'profile/:username' => 'user#profile', :as => 'profile'

  get 'edit' => 'user#edit', :as => 'profile_edit'
  post 'edit' => 'user#edit'

  get 'settings' => 'user#settings', :as => 'settings'
  post 'settings' => 'user#settings'

  get 'post' => 'post#new', :as => 'post_new'
  post 'post' => 'post#new'

  get 'postview/:username/:id' => 'post#show', :as => 'postview'

  get 'threads' => 'post#list', :as => 'threads'

  get 'post/edit'

  get 'post/delete'

  get 'logout' => 'user#logout', :as => 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
