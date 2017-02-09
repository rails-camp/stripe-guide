Rails.application.routes.draw do
  resources :payments, only: [:new, :create]
  get 'payment-thanks', to: 'payments#thanks', as: 'payment_thanks'
  resources :charges, only: [:new, :create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  devise_for :users
  resources :posts
  root to: 'posts#index'
end
