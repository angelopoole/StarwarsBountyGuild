Rails.application.routes.draw do
  get "/login", to: "hunters#login", as: "login"
  post "/login", to: "hunters#create_login_session", as: "create_login_session"
  delete "hunters/logout", to: "hunters#logout", as: "logout"
  post "hunter_contracts/new/:contract_id", to: "hunter_contracts#create", as: "hunter_contract_create"
  
  root 'hunter_contracts#index'
  resources :contracts
  resources :hunter_contracts, except: [:new]
  resources :hunters

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
