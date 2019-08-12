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
  get '/podcasts', to: 'podcasts#index'
  get '/offer', to: 'offers#index'
  get '/upcoming_events', to: 'events#index'
  get '/upcoming_events/:id', to: 'events#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
