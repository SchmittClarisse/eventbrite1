Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static_pages/contact'
  devise_for :users
  root 'events#index'

  resources :users, :only => [:show]
  resources :events
  resources :attendances
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
