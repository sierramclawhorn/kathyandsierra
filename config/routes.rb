Rails.application.routes.draw do

  resources :creators, only: [:new, :create] do
    resources :posts
  end

end
