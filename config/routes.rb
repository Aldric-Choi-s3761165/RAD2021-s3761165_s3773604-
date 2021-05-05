Rails.application.routes.draw do
  resources :savedlists
  resources :products
  resources :collections
  get 'static_pages/home'

  get 'static_pages/helpandsupport'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  root 'static_pages#home'
end
