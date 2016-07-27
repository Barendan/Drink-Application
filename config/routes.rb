Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users
  resources :orders
  resources :products


end
