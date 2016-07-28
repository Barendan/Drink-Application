Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users

  resources :users, path: '/' do 
    resources :orders
  end
  resources :products, only: [:index]


 get '/company/some/other/route/about' => 'visitors#about', as: :about
end
