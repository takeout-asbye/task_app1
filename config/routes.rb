Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  resources :users do
    collection do
      get :account
      get :profile
    end
  end
  
  resources :hotels do
    collection do
      get :posts
      get :reservations
    end
  end
  
  resources :reservations do
    collection do
      post :confirm
    end
  end
end
