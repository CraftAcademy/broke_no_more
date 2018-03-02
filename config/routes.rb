Rails.application.routes.draw do

  resources :home, only: :index

  resources :incomes, only: [:new, :create]

  resources :expenses

  resources :saving_goals, only: [:new, :create]

  devise_for :users

  root controller: :home, action: :index

end
