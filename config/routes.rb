Rails.application.routes.draw do
  resources :tickets
  resources :raffles
  resources :users
  resources :types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
