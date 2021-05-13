Rails.application.routes.draw do

  resources :orders
  resources :carts
  resources :products
  resources :collections, param: :name
  resources :favorites, only: [:create, :destroy]
  resources :newsletters

  get 'static_pages/home'
  
  get '/helpandsupport', to: 'static_pages#helpandsupport', as: 'static_pages_help_and_support'
  get '/savedlist', to: 'static_pages#savedlist', as: 'static_pages_saved_list'
  
  # get '/signup', to: 'newsletters#new'
  # post '/signup', to: 'newsletter#create'
  
  # get 'newsletters/new'
  post '/', to: 'newsletters#create'
  # get '/', to 'newsletter#new'
  
  get '/allproducts', to: 'products#products', as: 'all_products'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  root 'static_pages#home'
end
