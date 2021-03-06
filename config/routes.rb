Rails.application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  get 'auth/:google_oauth2/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only:[:show]

  get 'sessions/create'
  get 'sessions/destroy'

  get 'home/about'
  get 'home/contact'
  get 'home/home'
  get 'home/show'
  root to: 'home#home'

end
