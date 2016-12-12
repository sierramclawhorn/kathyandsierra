Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
    get '/logout' => 'sessions#destroy'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'

  resources :locations do 
    resources :posts, except: [:index]
  end

  get '/about' => 'users#show'

  root 'locations#index'

end
