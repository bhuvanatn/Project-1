Rails.application.routes.draw do

  root :to => 'pages#welcome'
  # get '/donations/donationByCategories' => 'donations#donationByCategories'
  # get '/donations/donationByUser' => 'donations#donationByUser'
  resources :users
  resources :categories #, :donations
  get '/signup' => 'users#new'

  resources :donations do
    collection do
      get '/donationByCategories' => 'donations#donationByCategories'
      get '/donationByUser' => 'donations#donationByUser'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
