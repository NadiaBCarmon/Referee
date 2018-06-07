Rails.application.routes.draw do
  devise_for :customers
  # , :skip => [:signup, :profile, :survey]
  devise_for :businesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mains
  resources :logouts
  
  root "mains#index"

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :signup do
  		resources :individuals, :businesses
  end

  namespace :profile do
  		resources :individuals, :businesses
  end

#We need a route before here that asks: Are you an individual or a business?
  namespace :survey do
  		resources :individuals, :businesses
  end

end