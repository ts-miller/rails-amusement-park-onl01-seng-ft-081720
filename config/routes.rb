Rails.application.routes.draw do
  resources :rides
  resources :attractions
  resources :users, only: [:new, :show, :create, :delete]
  
  root 'users#index'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#delete'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
