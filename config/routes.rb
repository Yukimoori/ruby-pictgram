# Rails.application.routes.draw do
#   get 'users/new'
#   get 'pages/index'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root 'pages#index'
#
# end

# Rails.application.routes.draw do
#   get 'users/new'
#   root 'pages#index'
#   get 'pages/help'
# end

Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'

  resources :users
end
