Rails.application.routes.draw do

  get 'twitter_sessions/new'

  get 'sessions/new'

  get 'customers/new'

  resources :orders
  resources :carts
  resources :products
  resources :collections, param: :name
  resources :favorites, only: [:create, :destroy]
  resources :newsletters
  resources :customers
  resources :users

  get 'static_pages/home'
  
  get '/helpandsupport', to: 'static_pages#helpandsupport', as: 'static_pages_help_and_support'
  get '/savedlist', to: 'static_pages#savedlist', as: 'static_pages_saved_list'
  get '/filter', to: 'static_pages#filter', as: 'static_pages_filter'
  get '/search', to: 'static_pages#search', as: 'static_pages_search'


  get 'password/reset',to: 'password_resets#new'
  post 'password/reset',to: 'password_resets#create'
  get 'password/reset/edit',to: 'password_resets#edit', as: 'edit_password_reset'

  
  # get '/signup', to: 'newsletters#new'
  # post '/signup', to: 'newsletter#create'
  
  # get 'newsletters/new'
  post '/', to: 'newsletters#create'
  post 'products#show', to: 'orders#create'
  # get '/', to 'newsletter#new'
  
  get'/signup', to: 'customers#new'
  post'/signup', to: 'customers#create'
  
  get    '/login',   to: 'sessions#new'   
  post   '/login',   to: 'sessions#create'   
  delete '/logout',  to: 'sessions#destroy' 
  
  get '/allproducts', to: 'products#products', as: 'all_products'
  
  get '/auth/:provider/callback', to: 'twitter_sessions#create'
  delete '/logouttwitter', to: 'twitter_sessions#destroy'
  
  post '/carts/:id', to: 'carts#clear'
  
  post 'customers/:id', to: 'customers#subscribe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  root 'static_pages#home'
end
