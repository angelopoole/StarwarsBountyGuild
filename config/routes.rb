Rails.application.routes.draw do
  root 'hunter_contracts#index'
  resources :contracts
  resources :hunter_contracts
  resources :hunters

  get "hunters/login", to: "hunters#login", as: "login"
  post "hunters/login", to: "hunters#create_login_session", as: "create_login_session"
  delete "hunters/logout", to: "hunters#logout", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
