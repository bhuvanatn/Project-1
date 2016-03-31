Rails.application.routes.draw do

  root :to => 'pages#welcome'
    get '/users/edit' => 'users#edit'
    resources :users, :except => [:edit]
    resources :categories, :donations
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
