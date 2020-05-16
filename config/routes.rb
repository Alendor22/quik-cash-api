Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      post 'login', to: "auth#login"
      resources :listings
      resources :users do
      resources :listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      end
    end
  end
  
end
