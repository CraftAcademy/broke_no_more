Rails.application.routes.draw do

  resources :home, only: :index

  resources :incomes, only: [:new, :create]

  root controller: :home, action: :index

  root 'home#index'
end
