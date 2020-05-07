Rails.application.routes.draw do
  resources :billexpenses
  resources :creditcards
  resources :bankinformations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
