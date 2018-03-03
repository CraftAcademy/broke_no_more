Rails.application.routes.draw do

  resources :home, only: :index

  resources :incomes, only: [:new, :create]

  devise_for :users, controllers: { omniauth_callbacks: :omniauth_callbacks}

  resources :expenses

  root controller: :home, action: :index

end
