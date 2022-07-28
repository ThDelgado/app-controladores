Rails.application.routes.draw do
  devise_for :admins
  resources :cart, only:[:show,:update]
  
    authenticate :admin do
        resources :products
        resources :categories
    end
  
  
    resources :categories
    devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
