Rails.application.routes.draw do

  get 'comments/new'
  resources :comments 

  root 'pages#index'
  get 'sessions/new'
  get 'pages/help'

  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :topics do
  resources:favorites,only:[:create,:destory]
  end

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',  to: 'favorites#destroy'

end
