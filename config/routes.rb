Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, :path => "/"
  resources :users do 
    resources :orders
  end
  resources :products, only: [:index]


end
