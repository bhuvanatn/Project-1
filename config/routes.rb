Rails.application.routes.draw do

  root :to => 'pages#welcome'
  get '/users/edit' => 'users#edit'
  get '/donations/list' => 'donations#donationlist'
  resources :users, :except => [:edit]
  resources :categories, :donations
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
