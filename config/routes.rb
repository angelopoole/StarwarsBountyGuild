Rails.application.routes.draw do
  root 'hunter_contracts#index'
  resources :contracts
  resources :hunter_contracts
  resources :hunters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
