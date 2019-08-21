Rails.application.routes.draw do
  resources :events
  resources :news
  # resources :offers
  # resources :podcasts
  # resources :services
  # resources :users
  # resources :campuses

  get '/campus', to: 'campuses#location'
  get '/podcasts', to: 'podcasts#index'
  get '/offer', to: 'offers#index'
  post '/users/sign_up', to: 'users#create'
  get '/users/sign_up', to: 'users#sign_up'
  post '/users/login', to: 'users#sign_in'
  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
