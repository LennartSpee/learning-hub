Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'guide', to: 'pages#guide'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy, :index] do
    resources :reviews, only: [:create, :new]
  end

  get 'my_offers', to: 'offers#my_offers', as: :my_offers
end
