Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  devise_for :users
  root controller: :products, action: :index
  mount Cartify::Engine, at: '/'
end