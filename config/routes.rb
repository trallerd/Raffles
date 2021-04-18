Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'ticket/buy'
    end
  end
  devise_for :users
  resources :prizes
  resources :tickets
  resources :raffles
  resources :users
  resources :types
  root to: 'raffles#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
