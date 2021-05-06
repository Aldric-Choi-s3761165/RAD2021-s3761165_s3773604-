Rails.application.routes.draw do
  resources :products
  resources :collections, param: :name
  resources :favorites, only: [:create, :destroy]

  get 'static_pages/home'
  
  get '/helpandsupport', to: 'static_pages#helpandsupport', as: 'static_pages_help_and_support'
  get '/savedlist', to: 'static_pages#savedlist', as: 'static_pages_saved_list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  root 'static_pages#home'
end
