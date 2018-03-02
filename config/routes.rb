Rails.application.routes.draw do

  resources :home, only: :index

  resources :incomes, only: [:new, :create]

  devise_for :users

  resources :expenses

  resources :saving_goal

  root controller: :home, action: :index

end
