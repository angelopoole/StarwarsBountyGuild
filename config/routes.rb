Rails.application.routes.draw do
  resources :contracts, only: [:index, :show]
  resources :targets, only: [:index, :show]
  resources :hunters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
