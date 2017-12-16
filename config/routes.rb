Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'session#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  resources :sessions, only: [:create, :destroy]
  # resource :home, only:[:show]

  get 'sessions/create'

  get 'sessions/destroy'

  get 'main/home'

  get 'main/about'

  get 'main/contact'

  root to: 'main#home'

end
#
#
# Rails.application.routes.draw do
#
# end
