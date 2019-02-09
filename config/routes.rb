Rails.application.routes.draw do

  get 'comments/new'


  root 'pages#index'
  get 'sessions/new'
  get 'pages/help'

  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :topics do
    resources :comments
  end

  resources:favorites,only:[:create,:destory]
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',  to: 'favorites#destroy'

end
