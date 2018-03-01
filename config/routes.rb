Rails.application.routes.draw do

  resources :home, only: [:create, :index, :update, :show]

  root controller: :home, action: :index

  root 'home#index'
end
