Rails.application.routes.draw do

  resources :home, only: :index

  resources :incomes, only: [:new, :create]

  devise_for :users

  resources :fixed_costs

  root controller: :home, action: :index

  root 'home#index'
end
