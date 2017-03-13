Rails.application.routes.draw do

  resources :locations do 
    resources :posts, except: [:index]
  end

  resources :about, only: [:index]

  root 'locations#index'

end
