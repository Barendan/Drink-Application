Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users
  resources :users, except: [:new, :create] do 
    resources :orders, except: [:index]
  end

  get '/home', to: 'orders#new', as: 'home'

end
