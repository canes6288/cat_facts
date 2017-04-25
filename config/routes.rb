Rails.application.routes.draw do
  get 'users/show'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'facts#index'

  get '/profile' => 'users#show'

  post '/facts' => 'facts#create'
end
