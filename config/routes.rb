Rails.application.routes.draw do

  resources :home, only: :index

  resources :fixed_costs, only: [:new, :create]

  root controller: :home, action: :index
end
