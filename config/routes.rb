Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

resources :donors, only: [:index, :show, :create]
resources :donations, only: [:index, :create]
resources :beneficiaries, only: [:index, :create]
resources :expenses, only: [:index, :create]
end
