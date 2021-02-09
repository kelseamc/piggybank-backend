Rails.application.routes.draw do
 
  namespace :api do
    namespace :v1 do
      get "/profile", to: "users#show"
      post "/register", to: "auth#register"
      post "/login", to: "auth#login"
      resources :users, only: [:index]
      resources :piggy_banks
      resources :accounts
      resources :transactions

    end
  end
end
