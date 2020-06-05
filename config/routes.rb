Rails.application.routes.draw do

  resources :saldos
  get "usertoken/:user_id", to: "tokens#usertoken"


  resources :tokens
  resources :pessoas
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
