Rails.application.routes.draw do

  resources :users, only: [:new, :create]
    get '/logout' => 'sessions#destroy'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'

  resources :locations do 
    resources :posts, except: [:index]
  end

  resources :about, only: [:index]

  root 'locations#index'

end
