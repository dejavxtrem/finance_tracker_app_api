Rails.application.routes.draw do
  resources :billexpenses, only: [:index, :show, :create]
  resources :creditcards
  resources :bankinformations
  resources :users , only: [:index, :show, :create, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
