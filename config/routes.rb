Rails.application.routes.draw do
  devise_for :users
  
  get 'manages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 root "manages#index"

 resources :manages
end
