Rails.application.routes.draw do
  resources :billexpenses, only: [:index, :show]
  resources :creditcards
  resources :bankinformations

  get '/search' => 'apidata#search'
  resources :users , only: [:index, :show, :create, :update] do
    resources :billexpenses, only: [:create]
    resources :creditcards,  only:  [:create]
    resources :bankinformations, only: [:create] 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
