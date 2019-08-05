Rails.application.routes.draw do
  resources :offers
  resources :podcasts
  resources :events
  resources :services
  resources :users
  resources :news
  resources :campuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
