Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/user_login', to: 'auth#user_login'
      get '/auto_user_login', to: 'auth#auto_user_login'
      post '/business_login', to: 'auth#business_login'
      get '/auto_business_login', to: 'auth#auto_business_login'
      post '/user_register', to: 'users#register'
      post '/business_register', to: 'businesses#register'
      resources :users
      resources :businesses
      resources :deals
      resources :likes
      resources :comments
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
