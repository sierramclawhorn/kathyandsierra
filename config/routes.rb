Rails.application.routes.draw do

  resources :creators, only: [:new, :create]

  resources :locations do 
    resources :posts, except: [:index]
  end

  root 'locations#index'

end
