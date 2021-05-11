require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  namespace :api do
    namespace :v1 do
      resources :ticket, only: [] do
        get :buy, on: :member
      end
    end
  end
  devise_for :users
  resources :prizes
  resources :tickets
  resources :raffles
  resource :raffle, only: [] do
    member do
      get :create_tickets
    end
  end
  resources :users
  resources :types
  root to: 'raffles#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
