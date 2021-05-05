Rails.application.routes.draw do
  resources :products
  resources :collections
  resources :favorites, only: [:create, :destroy]

  get 'static_pages/home'
  
  get '/helpandsupport', to: 'static_pages#helpandsupport'
  get '/savedlist', to: 'static_pages#savedlist'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  root 'static_pages#home'
end
