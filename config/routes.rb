Rails.application.routes.draw do

  # get 'map/index'

# You can have the root of your site routed with "root"
  root "index#home", as: "index_path"

  get 'index/new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, except: [:index, :show]

  get '/users/:username', to: 'users#show', as:'username'

  get 'profile/edit', to: 'users#edit', as: 'edit_profile'

  get 'profile/edit/password', to: 'users#password', as: 'edit_password'

  resources :artworks do
    resources :comments
  end

  get 'map/index'

  


end
