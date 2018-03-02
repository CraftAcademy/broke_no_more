Rails.application.routes.draw do

  resources :home, only: :index

  resources :incomes, only: [:new, :create]

  devise_for :users
  
  root controller: :home, action: :index

  root 'home#index'
end
