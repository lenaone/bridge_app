Rails.application.routes.draw do
  # resources :offers
  # resources :podcasts
  # resources :events
  # resources :services
  # resources :users
  # resources :news
  # resources :campuses

  get '/campus', to: 'campuses#location'
  get '/news', to: 'news#index'
  get '/news/:id', to: 'news#show'
  get '/podcasts', to: 'podcasts#index'
  get '/offer', to: 'offers#index'
  get '/upcoming_events', to: 'events#index'
  get '/upcoming_events/:id', to: 'events#show'
  post '/users/sign_up', to: 'users#create'
  get '/users/sign_up', to: 'users#sign_up'
  post '/users/login', to: 'users#sign_in'
  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  put '/users/edit', to: 'users#update'
  get '/users/edit', to: 'users#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
