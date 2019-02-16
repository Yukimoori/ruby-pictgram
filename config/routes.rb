Rails.application.routes.draw do
  root 'pages#index'

  get 'comments/new'
  get 'pages/help'

  resources :users

  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :topics do
    resources :comments
    resources:favorites,only:[:create,:destory]
  end

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',  to: 'favorites#destroy'

end
