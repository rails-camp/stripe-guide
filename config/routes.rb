Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  devise_for :users
  resources :posts
  root to: 'posts#index'
end
