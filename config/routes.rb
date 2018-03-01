Rails.application.routes.draw do

  resources :home, only: [:create, :index, :update, :show]

  resources :income, only: :new

  root controller: :home, action: :index

  root 'home#index'
end
