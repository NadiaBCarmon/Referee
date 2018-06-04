Rails.application.routes.draw do
  devise_for :customers
  devise_for :businesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mains
  resources :logouts
  
  root "mains#index"

  # get '/auth/:twitter/callback', to: 'sessions#create'
  get '/auth/twitter/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
   get '/customers/survey', to: 'devise/surveys#new'

  namespace :signup do
  		resources :individuals, :businesses
  end

  namespace :profile do
  		resources :individuals, :businesses
  end

  namespace :survey do
  		resources :individuals, :businesses
  end

end